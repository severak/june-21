/*
  jsl.c - read Convert sysex bulk copy from Juno-1/Juno-2 and 
  send it the emulator.





  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.

 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#include <csdl.h>

#define MAX_FICNAME  1024

typedef struct {
  OPDS h;
  MYFLT *out; 
  STRINGDAT *ficname;
  MYFLT*tone;
  STRINGDAT *paramname;
} getjuparm_t ;


#define NB_PARMS 37
const char *t_parms[NB_PARMS] =
  {"PresetName",
   "dcoaftr",  "vcfkybd",  "vcfaftr",  "vcaaftr",
   "envkybd",  "dcobnd",   "dcolfo",   "chorus",
   "dcoenvd", "pwpwm","pwmrate","dcoenv",
   "vcffreq", "vcfreso","vcfenv","vcfenvd",
   "vcflfo", "vcaenv","vcalevl","lforate",
   "lfodely","sub","envt1","envl1",
   "envt2","sawtooth","envl2","envt3",
   "pulse","envl3","envt4","hpffreq",
   "dcorng","sublevl","noislvl","crsrate"
  };
const int t_offset[NB_PARMS] =
  {42,
    0,  0,  2,  2,
    4,  4,  6,  8,
    8, 10, 12, 10,
   14, 16, 14, 18,
   20, 18, 22, 24,
   26, 22, 28, 30,
   32, 28, 34, 36,
   34, 38, 40, 38,
   42, 46, 50, 54
  };

typedef struct {
  OPDS h;
  STRINGDAT *out; 
  STRINGDAT *ficname;
  MYFLT *tone;
  MYFLT *group;     /*  0 : Preset, 1 : Memory, 2 : Cartridge */ 
} getjuname_t ;


static char ficbuf[9 * 1024];
static char ficname[MAX_FICNAME + 1];
static int curTone = 0 ;
int error(int err, char* msg) {
  printf("ERR %d - %s\n", err, msg);
  exit(err);
}




int verif_test(int test,int err, char* msg) {
  if (!test)  error(err,msg);
}


MYFLT get_offset( MYFLT tone,char* parmname) {
  int offset, poff, i;

  if (offset < 0 || offset > 64)  return 0;
  offset = tone; 

  for (i = 0; i < NB_PARMS; i++) {
    if (strcmp(parmname, t_parms[i]) ==0) break; 
  }
  poff = t_offset[i]; 

  return 64 * offset + (int)((offset) / 4 + 1 ) * 9 + (int)(offset / 4)  + poff  ;
}

void loadbank(char* pficname) {
  FILE *fp1;
  int ret = 0 ; 
  /* is it the current bank ?*/
  if (strlen(pficname) > MAX_FICNAME) {
    return;
  }
  
  if (strcmp(ficname, pficname) != 0) {
    if ((fp1 = fopen(pficname, "r")) == NULL) return ;
    strcpy(ficname,pficname);
    ret =  fread(ficbuf, 1, 9000, fp1);
    fclose(fp1) ; 
  }
}

#define B_BYTE(count) (ficbuf[count++]) | (ficbuf[count++])<<4


int getjuname(CSOUND *csound, getjuname_t* p) {

  char tablechars[64] = "ABCDEFGHIJKLMNOPKRSTUVWXYZabcdefghijklmnopkrstuvwxyz0123456789 -";
  char pname[11]="          "; 
  int offset ;
  int toneb10;
  unsigned int value;  
  loadbank(p->ficname->data);
  offset = get_offset(*p->tone,"PresetName") ; /* + 42; */
  toneb10 = *p->tone;

    

  /* byte 21 */
  value = B_BYTE(offset) ;
  pname[0] = tablechars[value&0b00111111];
      
  /* byte 22 */
  value = B_BYTE(offset) ;
  pname[1] = tablechars[value&0b00111111];
  
  /* byte 23 */
  value = B_BYTE(offset) ;
  pname[2] = tablechars[value&0b00111111];
      
  /* byte 24 */
  value = B_BYTE(offset) ;
  pname[3] = tablechars[value&0b00111111];
      
  /* byte 25 */
  value = B_BYTE(offset) ;
  pname[4] = tablechars[value&0b00111111];
      
  /* byte 26 */
  value = B_BYTE(offset) ;
  pname[5] = tablechars[value&0b00111111];
  
  /* byte 27 */
  value = B_BYTE(offset) ;
  pname[6] = tablechars[value&0b00111111];
      
  /* byte 28 */
  value = B_BYTE(offset) ;
  pname[7] = tablechars[value&0b00111111];
      
  /* byte 29 */
  value = B_BYTE(offset) ;
  pname[8] = tablechars[value&0b00111111];
  
  /* byte 30 */
  value = B_BYTE(offset) ;
  pname[9] = tablechars[value&0b00111111];

  if (*p->group == 0) {
    sprintf(p->out->data,"P-%d%d  ",toneb10/8 + 1, toneb10 % 8 + 1 ) ;
  } else if  (*p->group == 1) {
    sprintf(p->out->data,"M-%d%d  ",toneb10/8 + 1, toneb10 % 8 + 1 ) ;
  } else if  (*p->group == 2) {
    sprintf(p->out->data,"C-%d%d  ",toneb10/8 + 1, toneb10 % 8 + 1 ) ;
  }
    

  if (p->out->size < strlen(pname)) {
    strcat(p->out->data,"X") ;
  }
  else {
    strcat(p->out->data,pname);
  }

  return OK;
}
/*
typedef struct {
  OPDS h;
  MYFLT *out; 
  STRINGDAT *ficname;
  MYFLT*tone;
  STRINGDAT *paramname;
} getjuparm_t ;
*/


int getjuparm(CSOUND *csound, getjuparm_t* p) {
  int offset, toneb10 ;
  unsigned int value, b[22], c[7];
  
  
  loadbank(p->ficname->data);
  offset = get_offset(*p->tone, p->paramname->data);

  /*  *p->out =   offset ;

      return OK; */
  
  /* byte 0 */
  if (strcmp(p->paramname->data,"dcoaftr") == 0) {
    value = B_BYTE(offset) ;
    *p->out = (value&0xF0)>>4 ;
  }
  if (strcmp(p->paramname->data,"vcfkybd") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0xF ;
  }
  
  
  /* byte 1 */
  if (strcmp(p->paramname->data,"vcfaftr") == 0) {
    value = B_BYTE(offset) ;
    *p->out = (value&0xF0)>>4 ;
  }
  if (strcmp(p->paramname->data,"vcaaftr") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0xF ;
  }

  /* byte 2 */
  if (strcmp(p->paramname->data,"envkybd") == 0) {
    value = B_BYTE(offset) ;
    *p->out = (value&0xF0)>>4;
  }
  if (strcmp(p->paramname->data,"dcobnd") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0xF;
  }
  
  /* byte 3 */
  if (strcmp(p->paramname->data,"dcolfo") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  
  /* byte 4 */
  if (strcmp(p->paramname->data,"chorus") == 0) {
    value = B_BYTE(offset) ;
    b[0] = (value&0b10000000)>>7;
    *p->out =b[0] ;
  }
  if (strcmp(p->paramname->data,"dcoenvd") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111  ; 
  }
  
  /* byte 5 */
  if (strcmp(p->paramname->data,"pwpwm") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"dcoenv") == 0) {
    value = B_BYTE(offset) ;
    b[1] = (value&0b10000000)>>6;
    value = B_BYTE(offset) ;
    b[2] = (value&0b10000000)>>7;
    *p->out = (b[1]|b[2]) ;
  }
  
  /* byte 6 */
  if (strcmp(p->paramname->data,"pwmrate") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }


  /* byte 7 */
  if (strcmp(p->paramname->data,"vcffreq") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"vcfenv") == 0) {
    value = B_BYTE(offset) ;
    b[3] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[4] = (value&0b10000000)>>7 ;
    *p->out = (b[3]|b[4]) ;
  }

  /* byte 8 */
  if (strcmp(p->paramname->data,"vcfreso") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111;
  }

  /* byte 9 */
  if (strcmp(p->paramname->data,"vcfenvd") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"vcaenv") == 0) {
    value = B_BYTE(offset) ;
    b[5] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[6] = (value&0b10000000)>>7 ;
    *p->out = (b[5]|b[6]) ;
  }

  /* byte 10 */
  if (strcmp(p->paramname->data,"vcflfo") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  
  /* byte 11 */
  if (strcmp(p->paramname->data,"vcalevl") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"sub") == 0) {
    value = B_BYTE(offset) ;
    b[7] = (value&0b10000000)>>5 ;
    value = B_BYTE(offset) ;
    b[8] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[9] = (value&0b10000000)>>7 ;
    *p->out = (b[7]|b[8]|b[9]) ;
  }
  
  /* byte 12 */
  if (strcmp(p->paramname->data,"lforate") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  
  /* byte 13 */
  if (strcmp(p->paramname->data,"lfodely") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }

  /* byte 14 */
  if (strcmp(p->paramname->data,"envt1") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"sawtooth") == 0) {
    value = B_BYTE(offset) ;
    b[10] = (value&0b10000000)>>5 ;
    value = B_BYTE(offset) ;
    b[11] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[12] = (value&0b10000000)>>7 ;
    *p->out = (b[10]|b[11]|b[12]) ;
  }
  
  /* byte 15 */
  if (strcmp(p->paramname->data,"envl1") == 0) {
    value = B_BYTE(offset) ;
    *p->out =value&0b01111111 ; 
  }

  /* byte 16 */
  if (strcmp(p->paramname->data,"envt2") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }

  /* byte 17 */
  if (strcmp(p->paramname->data,"envl2") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"pulse") == 0) {
    value = B_BYTE(offset) ;
    b[13] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[14] = (value&0b10000000)>>7 ;
    *p->out = (b[13]|b[14]) ;
  }
  
  /* byte 18 */
  if (strcmp(p->paramname->data,"envt3") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }

  /* byte 19 */
  if (strcmp(p->paramname->data,"envl3") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  if (strcmp(p->paramname->data,"hpffreq") == 0) {
    value = B_BYTE(offset) ;
    b[15] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[16] = (value&0b10000000)>>7 ;
    *p->out = (b[15]|b[16]) ;
  }
  
  /* byte 20 */
  if (strcmp(p->paramname->data,"envt4") == 0) {
    value = B_BYTE(offset) ;
    *p->out = value&0b01111111 ;
  }
  
  /* byte 21 */
  if (strcmp(p->paramname->data,"dcorng") == 0) {
    value = B_BYTE(offset) ;
    b[17] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[18] = (value&0b10000000)>>7 ;
    *p->out = (b[17]|b[18]) ;
  }
  
  /* byte 22 & 23 : nothing begins there.. */

  /* byte 24*/
  if (strcmp(p->paramname->data,"sublevl") == 0) {
    value = B_BYTE(offset) ;
    b[19] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[20] = (value&0b10000000)>>7 ;
    *p->out = (b[19]|b[20]) ;
  }

  /* byte 25 */
  if (strcmp(p->paramname->data,"noislvl") == 0) {
    value = B_BYTE(offset) ;
    b[21] = (value&0b10000000)>>6 ;
    value = B_BYTE(offset) ;
    b[22] = (value&0b10000000)>>7 ;
    *p->out = (b[21]|b[22]) ;
  }

  /* byte 26  : nothing begins there.. */

  /* byte 27 */
  if (strcmp(p->paramname->data,"crsrate") == 0) {
    value = B_BYTE(offset) ;
    c[0] = (value&0b10000000)>>6 ;
    c[1] = (value&0b01000000)>>6 ;
    value = B_BYTE(offset) ;
    c[3] = (value&0b10000000)>>4 ;
    c[2] = (value&0b01000000)>>4 ;
    value = B_BYTE(offset) ;
    c[5] = (value&0b10000000)>>2 ;
    c[4] = (value&0b01000000)>>2 ;
    value = B_BYTE(offset) ;
    c[7] = (value&0b10000000) ;
    c[6] = (value&0b01000000) ;
    *p->out = (c[0]|c[1]|c[2]|c[3]|c[4]|c[5]|c[6]|c[7]) ;
  }


  /* byte */
  if (strcmp(p->paramname->data,"") == 0) {
    value = B_BYTE(offset) ;
    *p->out = 0;
  }
  if (strcmp(p->paramname->data,"") == 0) {
    value = B_BYTE(offset) ;
    *p->out = 0;
  }
  
  return OK ;   

}
  






static OENTRY localops[] =
  {
   { "getjuparm", sizeof(getjuparm_t), 0, 1, "i", "SiS",
     (SUBR) getjuparm, (SUBR) getjuparm, NULL },
   { "getjuname", sizeof(getjuname_t), 0, 1, "S", "Sii",
     (SUBR) getjuname, (SUBR) getjuname, NULL },
  };

LINKAGE
