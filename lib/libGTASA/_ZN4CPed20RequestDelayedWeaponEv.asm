; =========================================================
; Game Engine Function: _ZN4CPed20RequestDelayedWeaponEv
; Address            : 0x4A2CD8 - 0x4A2D6A
; =========================================================

4A2CD8:  PUSH            {R4-R7,LR}
4A2CDA:  ADD             R7, SP, #0xC
4A2CDC:  PUSH.W          {R8,R9,R11}
4A2CE0:  MOV             R4, R0
4A2CE2:  LDR.W           R0, [R4,#0x714]
4A2CE6:  CMP             R0, #0x37 ; '7'
4A2CE8:  BEQ             loc_4A2D64
4A2CEA:  MOVS            R1, #1
4A2CEC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A2CF0:  LDR             R6, [R0,#0xC]
4A2CF2:  MOVS            R1, #1
4A2CF4:  LDR.W           R0, [R4,#0x714]
4A2CF8:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A2CFC:  ADDS.W          R9, R6, #1
4A2D00:  LDR             R5, [R0,#0x10]
4A2D02:  ITTT NE
4A2D04:  MOVNE           R0, R6; this
4A2D06:  MOVNE           R1, #8; int
4A2D08:  BLXNE           j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4A2D0C:  ADDS.W          R8, R5, #1
4A2D10:  ITTT NE
4A2D12:  MOVNE           R0, R5; this
4A2D14:  MOVNE           R1, #8; int
4A2D16:  BLXNE           j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4A2D1A:  CMP.W           R9, #0
4A2D1E:  BEQ             loc_4A2D34
4A2D20:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4A2D2A)
4A2D22:  ADD.W           R1, R6, R6,LSL#2
4A2D26:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4A2D28:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4A2D2A:  ADD.W           R0, R0, R1,LSL#2
4A2D2E:  LDRB            R0, [R0,#0x10]
4A2D30:  CMP             R0, #1
4A2D32:  BNE             loc_4A2D64
4A2D34:  CMP.W           R8, #0
4A2D38:  BEQ             loc_4A2D4E
4A2D3A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4A2D44)
4A2D3C:  ADD.W           R1, R5, R5,LSL#2
4A2D40:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4A2D42:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4A2D44:  ADD.W           R0, R0, R1,LSL#2
4A2D48:  LDRB            R0, [R0,#0x10]
4A2D4A:  CMP             R0, #1
4A2D4C:  BNE             loc_4A2D64
4A2D4E:  LDR.W           R1, [R4,#0x714]
4A2D52:  MOV             R0, R4
4A2D54:  LDR.W           R2, [R4,#0x718]
4A2D58:  MOVS            R3, #0
4A2D5A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
4A2D5E:  MOVS            R0, #0x37 ; '7'
4A2D60:  STR.W           R0, [R4,#0x714]
4A2D64:  POP.W           {R8,R9,R11}
4A2D68:  POP             {R4-R7,PC}
