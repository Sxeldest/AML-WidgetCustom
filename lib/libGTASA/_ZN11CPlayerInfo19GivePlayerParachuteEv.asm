; =========================================================
; Game Engine Function: _ZN11CPlayerInfo19GivePlayerParachuteEv
; Address            : 0x40AFF0 - 0x40B024
; =========================================================

40AFF0:  PUSH            {R4,R5,R7,LR}
40AFF2:  ADD             R7, SP, #8
40AFF4:  MOV             R4, R0
40AFF6:  LDR.W           R0, [R4,#0x190]
40AFFA:  CBZ             R0, locret_40B022
40AFFC:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x40B006)
40AFFE:  MOVW            R1, #(byte_71403C - 0x712330)
40B002:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
40B004:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
40B006:  LDRB            R0, [R0,R1]
40B008:  CMP             R0, #1
40B00A:  IT NE
40B00C:  POPNE           {R4,R5,R7,PC}
40B00E:  LDR             R0, [R4]
40B010:  MOVS            R1, #0x2E ; '.'
40B012:  MOVS            R2, #1
40B014:  MOVS            R3, #1
40B016:  MOVS            R5, #0x2E ; '.'
40B018:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
40B01C:  LDR             R0, [R4]
40B01E:  STR.W           R5, [R0,#0x710]
40B022:  POP             {R4,R5,R7,PC}
