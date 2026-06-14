; =========================================================
; Game Engine Function: _ZN4CPad15GetLeftAnalogueEP9CVector2D
; Address            : 0x3FA0E8 - 0x3FA142
; =========================================================

3FA0E8:  PUSH            {R4,R5,R7,LR}
3FA0EA:  ADD             R7, SP, #8
3FA0EC:  SUB             SP, SP, #8
3FA0EE:  MOV             R5, R0
3FA0F0:  MOVS            R0, #0
3FA0F2:  MOV             R4, R1
3FA0F4:  STRD.W          R0, R0, [SP,#0x10+var_10]
3FA0F8:  MOV.W           R0, #0xFFFFFFFF; int
3FA0FC:  MOVS            R1, #0; bool
3FA0FE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA102:  CBNZ            R0, loc_3FA11E
3FA104:  MOV             R1, SP
3FA106:  MOVS            R0, #0xA7
3FA108:  MOVS            R2, #1
3FA10A:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA10E:  CMP             R0, #1
3FA110:  BNE             loc_3FA11E
3FA112:  LDRD.W          R0, R1, [SP,#0x10+var_10]
3FA116:  STRD.W          R0, R1, [R4]
3FA11A:  ADD             SP, SP, #8
3FA11C:  POP             {R4,R5,R7,PC}
3FA11E:  LDRSH.W         R0, [R5]
3FA122:  VMOV            S0, R0
3FA126:  VCVT.F32.S32    S0, S0
3FA12A:  VSTR            S0, [R4]
3FA12E:  LDRSH.W         R0, [R5,#2]
3FA132:  VMOV            S0, R0
3FA136:  VCVT.F32.S32    S0, S0
3FA13A:  VSTR            S0, [R4,#4]
3FA13E:  ADD             SP, SP, #8
3FA140:  POP             {R4,R5,R7,PC}
