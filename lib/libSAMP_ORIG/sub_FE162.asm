; =========================================================
; Game Engine Function: sub_FE162
; Address            : 0xFE162 - 0xFE18C
; =========================================================

FE162:  PUSH            {R4,R6,R7,LR}
FE164:  ADD             R7, SP, #8
FE166:  MOV             R4, R0
FE168:  LDRD.W          R2, R0, [R0,#4]
FE16C:  ADD             R1, R2
FE16E:  CMP             R1, R0
FE170:  BCC             locret_FE186
FE172:  CMP.W           R1, R0,LSL#1
FE176:  IT LS
FE178:  LSLLS           R1, R0, #1; size
FE17A:  LDR             R0, [R4]; ptr
FE17C:  STR             R1, [R4,#8]
FE17E:  BLX             realloc
FE182:  STR             R0, [R4]
FE184:  CBZ             R0, loc_FE188
FE186:  POP             {R4,R6,R7,PC}
FE188:  BLX             j__ZSt9terminatev; std::terminate(void)
