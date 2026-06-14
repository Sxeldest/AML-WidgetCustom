; =========================================================
; Game Engine Function: _ZN4CPad14GetCarGunFiredEbb
; Address            : 0x3F98EC - 0x3F9A1C
; =========================================================

3F98EC:  PUSH            {R4-R7,LR}
3F98EE:  ADD             R7, SP, #0xC
3F98F0:  PUSH.W          {R8}
3F98F4:  MOV             R5, R1
3F98F6:  LDRH.W          R1, [R0,#0x110]
3F98FA:  MOV             R4, R2
3F98FC:  CMP             R1, #0
3F98FE:  ITT EQ
3F9900:  LDRBEQ.W        R0, [R0,#0x118]
3F9904:  CMPEQ           R0, #0
3F9906:  BEQ             loc_3F9912
3F9908:  MOVS            R6, #0
3F990A:  MOV             R0, R6
3F990C:  POP.W           {R8}
3F9910:  POP             {R4-R7,PC}
3F9912:  CBNZ            R4, loc_3F998C
3F9914:  MOV.W           R0, #0xFFFFFFFF; int
3F9918:  MOVS            R1, #0; bool
3F991A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3F991E:  CBZ             R0, loc_3F998C
3F9920:  MOV.W           R0, #0xFFFFFFFF; int
3F9924:  MOVS            R1, #0; bool
3F9926:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3F992A:  LDRH            R0, [R0,#0x26]
3F992C:  MOVW            R1, #0x197
3F9930:  CMP             R0, R1
3F9932:  BEQ             loc_3F998C
3F9934:  MOV.W           R0, #0xFFFFFFFF; int
3F9938:  MOVS            R1, #0; bool
3F993A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3F993E:  LDRH            R0, [R0,#0x26]
3F9940:  MOVW            R1, #0x259
3F9944:  CMP             R0, R1
3F9946:  BEQ             loc_3F998C
3F9948:  MOV.W           R0, #0xFFFFFFFF; int
3F994C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F9950:  CBZ             R0, loc_3F998C
3F9952:  MOV.W           R0, #0xFFFFFFFF; int
3F9956:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F995A:  LDRSB.W         R1, [R0,#0x71C]
3F995E:  RSB.W           R1, R1, R1,LSL#3
3F9962:  ADD.W           R0, R0, R1,LSL#2
3F9966:  LDR.W           R0, [R0,#0x5B0]
3F996A:  CMP             R0, #1
3F996C:  BLT             loc_3F998C
3F996E:  MOVS            R0, #0x10
3F9970:  MOVS            R1, #1
3F9972:  MOVS            R6, #1
3F9974:  BLX             j__ZN15CTouchInterface10IsHeldDownENS_9WidgetIDsEi; CTouchInterface::IsHeldDown(CTouchInterface::WidgetIDs,int)
3F9978:  MOV             R8, R0
3F997A:  MOVS            R0, #0x11
3F997C:  MOVS            R1, #1
3F997E:  BLX             j__ZN15CTouchInterface10IsHeldDownENS_9WidgetIDsEi; CTouchInterface::IsHeldDown(CTouchInterface::WidgetIDs,int)
3F9982:  CMP.W           R8, #0
3F9986:  IT EQ
3F9988:  CMPEQ           R0, #0
3F998A:  BNE             loc_3F990A
3F998C:  CMP             R5, #1
3F998E:  BNE             loc_3F9908
3F9990:  MOV.W           R0, #0xFFFFFFFF; int
3F9994:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F9998:  MOV             R5, R0
3F999A:  CBZ             R4, loc_3F99AE
3F999C:  MOVS            R0, #0x17
3F999E:  MOVS            R1, #0
3F99A0:  MOVS            R2, #1
3F99A2:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F99A6:  CMP             R0, #0
3F99A8:  BEQ             loc_3F9908
3F99AA:  MOVS            R6, #2
3F99AC:  B               loc_3F990A
3F99AE:  CBZ             R5, loc_3F99C4
3F99B0:  LDRSB.W         R0, [R5,#0x71C]
3F99B4:  RSB.W           R0, R0, R0,LSL#3
3F99B8:  ADD.W           R0, R5, R0,LSL#2
3F99BC:  LDR.W           R0, [R0,#0x5B0]
3F99C0:  CMP             R0, #0
3F99C2:  BGT             loc_3F99E8
3F99C4:  MOV.W           R0, #0xFFFFFFFF; int
3F99C8:  MOVS            R1, #0; bool
3F99CA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3F99CE:  CMP             R0, #0
3F99D0:  BEQ             loc_3F9908
3F99D2:  MOV.W           R0, #0xFFFFFFFF; int
3F99D6:  MOVS            R1, #0; bool
3F99D8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3F99DC:  LDRH            R0, [R0,#0x26]
3F99DE:  MOVW            R1, #0x197
3F99E2:  CMP             R0, R1
3F99E4:  BNE.W           loc_3F9908
3F99E8:  MOVS            R0, #0xB
3F99EA:  MOVS            R1, #0
3F99EC:  MOVS            R2, #1
3F99EE:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F99F2:  CMP             R0, #1
3F99F4:  BNE.W           loc_3F9908
3F99F8:  LDR.W           R0, [R5,#0x590]
3F99FC:  CBZ             R0, loc_3F9A18
3F99FE:  LDR.W           R0, [R0,#0x5A4]
3F9A02:  CMP             R0, #0xA
3F9A04:  BNE             loc_3F9A18
3F9A06:  MOVS            R0, #0x5F ; '_'
3F9A08:  MOVS            R1, #0
3F9A0A:  MOVS            R6, #0
3F9A0C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3F9A10:  CMP             R0, #0
3F9A12:  IT EQ
3F9A14:  MOVEQ           R6, #1
3F9A16:  B               loc_3F990A
3F9A18:  MOVS            R6, #1
3F9A1A:  B               loc_3F990A
