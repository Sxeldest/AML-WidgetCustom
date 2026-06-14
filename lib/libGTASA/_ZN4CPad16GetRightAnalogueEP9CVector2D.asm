; =========================================================
; Game Engine Function: _ZN4CPad16GetRightAnalogueEP9CVector2D
; Address            : 0x3FA142 - 0x3FA1C6
; =========================================================

3FA142:  PUSH            {R4-R7,LR}
3FA144:  ADD             R7, SP, #0xC
3FA146:  PUSH.W          {R8}
3FA14A:  SUB             SP, SP, #8
3FA14C:  MOV             R4, R1
3FA14E:  MOV             R5, R0
3FA150:  MOV.W           R0, #0xFFFFFFFF; int
3FA154:  MOVS            R1, #0; bool
3FA156:  MOV.W           R8, #0
3FA15A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA15E:  MOVS            R6, #0
3FA160:  CBZ             R0, loc_3FA186
3FA162:  MOV.W           R0, #0xFFFFFFFF; int
3FA166:  MOVS            R1, #0; bool
3FA168:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA16C:  LDRB.W          R0, [R0,#0x3A]
3FA170:  LSLS            R0, R0, #0x1D
3FA172:  BNE             loc_3FA186
3FA174:  MOV.W           R0, #0xFFFFFFFF; int
3FA178:  MOVS            R1, #0; bool
3FA17A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA17E:  LDRB.W          R0, [R0,#0x392]
3FA182:  UBFX.W          R6, R0, #1, #1
3FA186:  MOV             R0, R5; this
3FA188:  MOV             R1, R6; bool
3FA18A:  MOVS            R2, #0; bool
3FA18C:  BLX             j__ZN4CPad18GetCarGunLeftRightEbb; CPad::GetCarGunLeftRight(bool,bool)
3FA190:  VMOV            S0, R0
3FA194:  MOV             R3, #0x451C4000; float
3FA19C:  MOV             R0, R5; this
3FA19E:  VCVT.F32.S32    S0, S0
3FA1A2:  MOV             R1, R6; bool
3FA1A4:  MOVS            R2, #0; CAutomobile *
3FA1A6:  VSTR            S0, [R4]
3FA1AA:  STR.W           R8, [SP,#0x18+var_18]; CHID *
3FA1AE:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
3FA1B2:  VMOV            S0, R0
3FA1B6:  VCVT.F32.S32    S0, S0
3FA1BA:  VSTR            S0, [R4,#4]
3FA1BE:  ADD             SP, SP, #8
3FA1C0:  POP.W           {R8}
3FA1C4:  POP             {R4-R7,PC}
