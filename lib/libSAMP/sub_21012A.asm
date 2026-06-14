; =========================================================
; Game Engine Function: sub_21012A
; Address            : 0x21012A - 0x210176
; =========================================================

21012A:  PUSH            {R4,R6,R7,LR}
21012C:  ADD             R7, SP, #8
21012E:  LDR             R1, [R1]
210130:  MOV             R4, R0
210132:  LDR             R0, [R0]
210134:  STR             R1, [R4]
210136:  SUBS            R1, #4
210138:  DMB.W           ISH
21013C:  LDREX.W         R2, [R1]
210140:  ADDS            R2, #1
210142:  STREX.W         R3, R2, [R1]
210146:  CMP             R3, #0
210148:  BNE             loc_21013C
21014A:  SUBS            R1, R0, #4
21014C:  DMB.W           ISH
210150:  DMB.W           ISH
210154:  LDREX.W         R2, [R1]
210158:  SUBS            R2, #1
21015A:  STREX.W         R3, R2, [R1]
21015E:  CMP             R3, #0
210160:  BNE             loc_210154
210162:  CMP.W           R2, #0xFFFFFFFF
210166:  DMB.W           ISH
21016A:  ITT LE
21016C:  SUBLE           R0, #0xC; void *
21016E:  BLXLE           j__ZdlPv; operator delete(void *)
210172:  MOV             R0, R4
210174:  POP             {R4,R6,R7,PC}
