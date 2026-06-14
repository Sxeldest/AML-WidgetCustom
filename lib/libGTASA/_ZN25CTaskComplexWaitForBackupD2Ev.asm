; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackupD2Ev
; Address            : 0x54737C - 0x5473B2
; =========================================================

54737C:  PUSH            {R4,R6,R7,LR}
54737E:  ADD             R7, SP, #8
547380:  MOV             R4, R0
547382:  LDR             R0, =(_ZTV25CTaskComplexWaitForBackup_ptr - 0x54738A)
547384:  MOV             R1, R4
547386:  ADD             R0, PC; _ZTV25CTaskComplexWaitForBackup_ptr
547388:  LDR             R2, [R0]; `vtable for'CTaskComplexWaitForBackup ...
54738A:  LDR.W           R0, [R1,#0x10]!; CEntity **
54738E:  ADDS            R2, #8
547390:  STR             R2, [R4]
547392:  CMP             R0, #0
547394:  IT NE
547396:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
54739A:  MOV             R1, R4
54739C:  LDR.W           R0, [R1,#0x14]!; CEntity **
5473A0:  CMP             R0, #0
5473A2:  IT NE
5473A4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5473A8:  MOV             R0, R4; this
5473AA:  POP.W           {R4,R6,R7,LR}
5473AE:  B.W             sub_18EDE8
