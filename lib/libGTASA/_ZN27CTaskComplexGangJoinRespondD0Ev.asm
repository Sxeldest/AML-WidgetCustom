; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespondD0Ev
; Address            : 0x51B18C - 0x51B1C2
; =========================================================

51B18C:  PUSH            {R4,R6,R7,LR}
51B18E:  ADD             R7, SP, #8
51B190:  MOV             R4, R0
51B192:  LDR             R0, =(_ZTV27CTaskComplexGangJoinRespond_ptr - 0x51B19A)
51B194:  LDRB            R1, [R4,#0xD]; char *
51B196:  ADD             R0, PC; _ZTV27CTaskComplexGangJoinRespond_ptr
51B198:  CMP             R1, #0
51B19A:  LDR             R0, [R0]; `vtable for'CTaskComplexGangJoinRespond ...
51B19C:  ADD.W           R0, R0, #8
51B1A0:  STR             R0, [R4]
51B1A2:  BEQ             loc_51B1B4
51B1A4:  LDR             R0, =(aGangs - 0x51B1AA); "gangs"
51B1A6:  ADD             R0, PC; "gangs"
51B1A8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51B1AC:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51B1B0:  MOVS            R0, #0
51B1B2:  STRB            R0, [R4,#0xD]
51B1B4:  MOV             R0, R4; this
51B1B6:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51B1BA:  POP.W           {R4,R6,R7,LR}
51B1BE:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
