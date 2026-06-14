; =========================================================
; Game Engine Function: _ZN6CWorld20ResetLineTestOptionsEv
; Address            : 0x422D8C - 0x422DC4
; =========================================================

422D8C:  PUSH            {R4,R6,R7,LR}
422D8E:  ADD             R7, SP, #8
422D90:  LDR             R0, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x422D9A)
422D92:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x422D9E)
422D94:  LDR             R2, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x422DA4)
422D96:  ADD             R0, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
422D98:  LDR             R3, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x422DA6)
422D9A:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
422D9C:  LDR.W           R12, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x422DAA)
422DA0:  ADD             R2, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
422DA2:  ADD             R3, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
422DA4:  LDR             R0, [R0]; CWorld::bIncludeCarTyres ...
422DA6:  ADD             R12, PC; _ZN6CWorld14bIncludeBikersE_ptr
422DA8:  LDR.W           LR, [R1]; CWorld::pIgnoreEntity ...
422DAC:  LDR             R4, [R2]; CWorld::fWeaponSpreadRate ...
422DAE:  MOVS            R2, #0
422DB0:  LDR             R3, [R3]; CWorld::bIncludeDeadPeds ...
422DB2:  LDR.W           R1, [R12]; CWorld::bIncludeBikers ...
422DB6:  STRB            R2, [R0]; CWorld::bIncludeCarTyres
422DB8:  STRB            R2, [R3]; CWorld::bIncludeDeadPeds
422DBA:  STRB            R2, [R1]; CWorld::bIncludeBikers
422DBC:  STR.W           R2, [LR]; CWorld::pIgnoreEntity
422DC0:  STR             R2, [R4]; CWorld::fWeaponSpreadRate
422DC2:  POP             {R4,R6,R7,PC}
