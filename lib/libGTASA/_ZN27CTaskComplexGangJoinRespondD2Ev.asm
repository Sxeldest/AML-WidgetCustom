; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespondD2Ev
; Address            : 0x51B150 - 0x51B182
; =========================================================

51B150:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGangJoinRespond::~CTaskComplexGangJoinRespond()'
51B152:  ADD             R7, SP, #8
51B154:  MOV             R4, R0
51B156:  LDR             R0, =(_ZTV27CTaskComplexGangJoinRespond_ptr - 0x51B15E)
51B158:  LDRB            R1, [R4,#0xD]; char *
51B15A:  ADD             R0, PC; _ZTV27CTaskComplexGangJoinRespond_ptr
51B15C:  CMP             R1, #0
51B15E:  LDR             R0, [R0]; `vtable for'CTaskComplexGangJoinRespond ...
51B160:  ADD.W           R0, R0, #8
51B164:  STR             R0, [R4]
51B166:  BEQ             loc_51B178
51B168:  LDR             R0, =(aGangs - 0x51B16E); "gangs"
51B16A:  ADD             R0, PC; "gangs"
51B16C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51B170:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51B174:  MOVS            R0, #0
51B176:  STRB            R0, [R4,#0xD]
51B178:  MOV             R0, R4; this
51B17A:  POP.W           {R4,R6,R7,LR}
51B17E:  B.W             sub_18EDE8
