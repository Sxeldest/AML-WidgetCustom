; =========================================================
; Game Engine Function: sub_13DF62
; Address            : 0x13DF62 - 0x13DF8E
; =========================================================

13DF62:  PUSH            {R4,R5,R7,LR}
13DF64:  ADD             R7, SP, #8
13DF66:  SUB             SP, SP, #0x40
13DF68:  ADD             R5, SP, #0x48+var_44
13DF6A:  MOV             R4, R0
13DF6C:  MOV             R0, R5; int
13DF6E:  BL              sub_13DFA2
13DF72:  MOV             R0, R4
13DF74:  MOV             R1, R5
13DF76:  BL              sub_13E044
13DF7A:  LDR             R0, [SP,#0x48+var_C]
13DF7C:  MOVS            R1, #0
13DF7E:  STR             R1, [SP,#0x48+var_C]
13DF80:  CBZ             R0, loc_13DF8A
13DF82:  BL              sub_163020
13DF86:  BLX             j__ZdlPv; operator delete(void *)
13DF8A:  ADD             SP, SP, #0x40 ; '@'
13DF8C:  POP             {R4,R5,R7,PC}
