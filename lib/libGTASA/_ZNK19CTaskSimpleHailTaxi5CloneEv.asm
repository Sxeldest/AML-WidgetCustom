; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleHailTaxi5CloneEv
; Address            : 0x496F94 - 0x496FC8
; =========================================================

496F94:  PUSH            {R7,LR}
496F96:  MOV             R7, SP
496F98:  SUB             SP, SP, #0x10
496F9A:  MOVS            R0, #dword_20; this
496F9C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496FA0:  LDR             R1, =(aHailtaxi - 0x496FAA); "HailTaxi"
496FA2:  MOVS            R2, #0
496FA4:  MOVS            R3, #0xE5
496FA6:  ADD             R1, PC; "HailTaxi"
496FA8:  STRD.W          R3, R1, [SP,#0x18+var_18]
496FAC:  MOVS            R1, #0
496FAE:  STR             R2, [SP,#0x18+var_10]
496FB0:  MOVS            R2, #0xD
496FB2:  MOV.W           R3, #0x40800000
496FB6:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
496FBA:  LDR             R1, =(_ZTV19CTaskSimpleHailTaxi_ptr - 0x496FC0)
496FBC:  ADD             R1, PC; _ZTV19CTaskSimpleHailTaxi_ptr
496FBE:  LDR             R1, [R1]; `vtable for'CTaskSimpleHailTaxi ...
496FC0:  ADDS            R1, #8
496FC2:  STR             R1, [R0]
496FC4:  ADD             SP, SP, #0x10
496FC6:  POP             {R7,PC}
