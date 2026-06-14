; =========================================================
; Game Engine Function: _ZNK26CTaskComplexKillAllThreats16GetNextThreatPedER4CPed
; Address            : 0x4E8124 - 0x4E8162
; =========================================================

4E8124:  PUSH            {R7,LR}
4E8126:  MOV             R7, SP
4E8128:  SUB             SP, SP, #0x28; int
4E812A:  LDR.W           R0, [R1,#0x440]
4E812E:  MOVS            R2, #0
4E8130:  MOVS            R3, #1
4E8132:  STR             R2, [SP,#0x30+var_C]
4E8134:  STRD.W          R2, R2, [SP,#0x30+var_20]
4E8138:  ADD.W           R12, SP, #0x30+var_10
4E813C:  STRH.W          R2, [SP,#0x30+var_18]
4E8140:  STRH.W          R3, [SP,#0x30+var_14]
4E8144:  ADD             R3, SP, #0x30+var_C
4E8146:  STRB.W          R2, [SP,#0x30+var_12]
4E814A:  MOVS            R2, #0x10
4E814C:  STMEA.W         SP, {R2,R3,R12}
4E8150:  ADD.W           R3, R0, #0x130; CEntity **
4E8154:  ADD             R0, SP, #0x30+var_20; this
4E8156:  MOVS            R2, #4; int
4E8158:  BLX             j__ZN23CPedAcquaintanceScanner23FindClosestAcquaintanceER4CPediPP7CEntityiRPS0_Ri; CPedAcquaintanceScanner::FindClosestAcquaintance(CPed &,int,CEntity **,int,CPed*&,int &)
4E815C:  LDR             R0, [SP,#0x30+var_C]
4E815E:  ADD             SP, SP, #0x28 ; '('
4E8160:  POP             {R7,PC}
