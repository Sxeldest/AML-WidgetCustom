; =========================================================
; Game Engine Function: _ZN6CWorld10InitialiseEv
; Address            : 0x422DD8 - 0x422E4A
; =========================================================

422DD8:  PUSH            {R4-R7,LR}
422DDA:  ADD             R7, SP, #0xC
422DDC:  PUSH.W          {R8}
422DE0:  LDR             R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x422DE8)
422DE2:  LDR             R1, =(_ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x422DEC)
422DE4:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
422DE6:  LDR             R2, =(_ZN6CWorld12bSecondShiftE_ptr - 0x422DF2)
422DE8:  ADD             R1, PC; _ZN6CWorld20bProcessCutsceneOnlyE_ptr
422DEA:  LDR             R3, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x422DFE)
422DEC:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
422DEE:  ADD             R2, PC; _ZN6CWorld12bSecondShiftE_ptr
422DF0:  LDR.W           R8, [R1]; CWorld::bProcessCutsceneOnly ...
422DF4:  MOVS            R1, #0
422DF6:  LDR.W           R12, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x422E04)
422DFA:  ADD             R3, PC; _ZN6CWorld13pIgnoreEntityE_ptr
422DFC:  STRB            R1, [R0]; CWorld::bNoMoreCollisionTorque
422DFE:  LDR             R0, =(_ZN6CWorld19bDoingCarCollisionsE_ptr - 0x422E0A)
422E00:  ADD             R12, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
422E02:  LDR.W           LR, =(_ZN6CWorld20bForceProcessControlE_ptr - 0x422E0E)
422E06:  ADD             R0, PC; _ZN6CWorld19bDoingCarCollisionsE_ptr
422E08:  LDR             R6, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x422E14)
422E0A:  ADD             LR, PC; _ZN6CWorld20bForceProcessControlE_ptr
422E0C:  LDR             R2, [R2]; CWorld::bSecondShift ...
422E0E:  LDR             R0, [R0]; CWorld::bDoingCarCollisions ...
422E10:  ADD             R6, PC; _ZN6CWorld14bIncludeBikersE_ptr
422E12:  LDR             R3, [R3]; CWorld::pIgnoreEntity ...
422E14:  LDR.W           R4, [R12]; CWorld::fWeaponSpreadRate ...
422E18:  STRB            R1, [R0]; CWorld::bDoingCarCollisions
422E1A:  LDR             R0, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x422E24)
422E1C:  LDR.W           R5, [LR]; CWorld::bForceProcessControl ...
422E20:  ADD             R0, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
422E22:  LDR             R6, [R6]; CWorld::bIncludeBikers ...
422E24:  STRB.W          R1, [R8]; CWorld::bProcessCutsceneOnly
422E28:  LDR             R0, [R0]; CWorld::bIncludeDeadPeds ...
422E2A:  STRB            R1, [R6]; CWorld::bIncludeBikers
422E2C:  STRB            R1, [R5]; CWorld::bForceProcessControl
422E2E:  STRB            R1, [R0]; CWorld::bIncludeDeadPeds
422E30:  LDR             R0, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x422E38)
422E32:  STRB            R1, [R2]; CWorld::bSecondShift
422E34:  ADD             R0, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
422E36:  STR             R1, [R3]; CWorld::pIgnoreEntity
422E38:  STR             R1, [R4]; CWorld::fWeaponSpreadRate
422E3A:  LDR             R0, [R0]; this
422E3C:  STRB            R1, [R0]; CWorld::bIncludeCarTyres
422E3E:  POP.W           {R8}
422E42:  POP.W           {R4-R7,LR}
422E46:  B.W             sub_196B40
