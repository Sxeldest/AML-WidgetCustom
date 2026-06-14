; =========================================================
; Game Engine Function: _ZN7CCamera20GetCamDirectlyBehindEv
; Address            : 0x3C0200 - 0x3C024C
; =========================================================

3C0200:  PUSH            {R4,R6,R7,LR}
3C0202:  ADD             R7, SP, #8
3C0204:  MOV             R4, R0
3C0206:  MOV.W           R0, #0xFFFFFFFF; int
3C020A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C020E:  CBZ             R0, loc_3C0242
3C0210:  MOV.W           R0, #0xFFFFFFFF; int
3C0214:  MOVS            R1, #0; bool
3C0216:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C021A:  CBZ             R0, loc_3C0242
3C021C:  LDR.W           R0, [R0,#0x5A4]
3C0220:  SUBS            R0, #3
3C0222:  CMP             R0, #2
3C0224:  BCC             loc_3C023E
3C0226:  LDR             R0, =(currentPad_ptr - 0x3C022C)
3C0228:  ADD             R0, PC; currentPad_ptr
3C022A:  LDR             R0, [R0]; currentPad
3C022C:  LDR             R0, [R0]
3C022E:  CMP             R0, #0
3C0230:  ITT EQ
3C0232:  MOVEQ           R0, #0; this
3C0234:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C0238:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C023C:  CBZ             R0, loc_3C0242
3C023E:  MOVS            R0, #1
3C0240:  POP             {R4,R6,R7,PC}
3C0242:  LDRB            R0, [R4,#0x1A]
3C0244:  CMP             R0, #0
3C0246:  IT NE
3C0248:  MOVNE           R0, #1
3C024A:  POP             {R4,R6,R7,PC}
