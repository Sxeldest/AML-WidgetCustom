; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard16InternalReplacesE10HIDMapping
; Address            : 0x29516C - 0x2951D2
; =========================================================

29516C:  LDR             R2, =(_ZN6CCheat15m_bShowMappingsE_ptr - 0x295172)
29516E:  ADD             R2, PC; _ZN6CCheat15m_bShowMappingsE_ptr
295170:  LDR             R2, [R2]; CCheat::m_bShowMappings ...
295172:  LDRB            R2, [R2]; CCheat::m_bShowMappings
295174:  CMP             R2, #0
295176:  BNE.W           loc_2951C8; jumptable 00295184 cases 22,40-50,56-65,71-79,83,84
29517A:  SUB.W           R2, R1, #0x16; switch 63 cases
29517E:  CMP             R2, #0x3E ; '>'
295180:  BHI.W           def_295184; jumptable 00295184 default case, cases 23-39,51-55,66-70,80-82
295184:  TBB.W           [PC,R2]; switch jump
295188:  DCB 0x20; jump table for switch statement
295189:  DCB 0x22
29518A:  DCB 0x22
29518B:  DCB 0x22
29518C:  DCB 0x22
29518D:  DCB 0x22
29518E:  DCB 0x22
29518F:  DCB 0x22
295190:  DCB 0x22
295191:  DCB 0x22
295192:  DCB 0x22
295193:  DCB 0x22
295194:  DCB 0x22
295195:  DCB 0x22
295196:  DCB 0x22
295197:  DCB 0x22
295198:  DCB 0x22
295199:  DCB 0x22
29519A:  DCB 0x20
29519B:  DCB 0x20
29519C:  DCB 0x20
29519D:  DCB 0x20
29519E:  DCB 0x20
29519F:  DCB 0x20
2951A0:  DCB 0x20
2951A1:  DCB 0x20
2951A2:  DCB 0x20
2951A3:  DCB 0x20
2951A4:  DCB 0x20
2951A5:  DCB 0x22
2951A6:  DCB 0x22
2951A7:  DCB 0x22
2951A8:  DCB 0x22
2951A9:  DCB 0x22
2951AA:  DCB 0x20
2951AB:  DCB 0x20
2951AC:  DCB 0x20
2951AD:  DCB 0x20
2951AE:  DCB 0x20
2951AF:  DCB 0x20
2951B0:  DCB 0x20
2951B1:  DCB 0x20
2951B2:  DCB 0x20
2951B3:  DCB 0x20
2951B4:  DCB 0x22
2951B5:  DCB 0x22
2951B6:  DCB 0x22
2951B7:  DCB 0x22
2951B8:  DCB 0x22
2951B9:  DCB 0x20
2951BA:  DCB 0x20
2951BB:  DCB 0x20
2951BC:  DCB 0x20
2951BD:  DCB 0x20
2951BE:  DCB 0x20
2951BF:  DCB 0x20
2951C0:  DCB 0x20
2951C1:  DCB 0x20
2951C2:  DCB 0x22
2951C3:  DCB 0x22
2951C4:  DCB 0x22
2951C5:  DCB 0x20
2951C6:  DCB 0x20
2951C7:  ALIGN 2
2951C8:  MOVS            R0, #0; jumptable 00295184 cases 22,40-50,56-65,71-79,83,84
2951CA:  BX              LR
2951CC:  LDR             R2, [R0]; jumptable 00295184 default case, cases 23-39,51-55,66-70,80-82
2951CE:  LDR             R2, [R2]
2951D0:  BX              R2
