; =========================================================
; Game Engine Function: _Z23OS_BillingPurchasePricePKc
; Address            : 0x26D0AC - 0x26D170
; =========================================================

26D0AC:  PUSH            {R4-R7,LR}
26D0AE:  ADD             R7, SP, #0xC
26D0B0:  PUSH.W          {R8}
26D0B4:  MOV             R8, R0
26D0B6:  LDR             R0, =(byte_6D7111 - 0x26D0BC)
26D0B8:  ADD             R0, PC; byte_6D7111
26D0BA:  LDRB            R0, [R0]
26D0BC:  CMP             R0, #1
26D0BE:  BNE             loc_26D168
26D0C0:  LDR             R0, =(byte_6D7112 - 0x26D0C6)
26D0C2:  ADD             R0, PC; byte_6D7112
26D0C4:  LDRB            R0, [R0]
26D0C6:  CMP             R0, #0
26D0C8:  BNE             loc_26D168
26D0CA:  LDR             R0, =(numItems_ptr - 0x26D0D0)
26D0CC:  ADD             R0, PC; numItems_ptr
26D0CE:  LDR             R0, [R0]; numItems
26D0D0:  LDR             R5, [R0]
26D0D2:  CMP             R5, #1
26D0D4:  BLT             loc_26D168
26D0D6:  LDR             R0, =(items_ptr - 0x26D0DE)
26D0D8:  MOVS            R4, #0
26D0DA:  ADD             R0, PC; items_ptr
26D0DC:  LDR             R0, [R0]; items
26D0DE:  LDR             R6, [R0]
26D0E0:  LDR             R0, [R6]
26D0E2:  MOV             R1, R8; char *
26D0E4:  LDR             R0, [R0]; char *
26D0E6:  BLX             strcmp
26D0EA:  CBZ             R0, loc_26D0F6
26D0EC:  ADDS            R4, #1
26D0EE:  ADDS            R6, #0xC
26D0F0:  CMP             R4, R5
26D0F2:  BLT             loc_26D0E0
26D0F4:  B               loc_26D168
26D0F6:  CBZ             R6, loc_26D168
26D0F8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D0FC:  MOV             R5, R0
26D0FE:  MOV             R1, R8
26D100:  LDR             R0, [R5]
26D102:  LDR.W           R2, [R0,#0x29C]
26D106:  MOV             R0, R5
26D108:  BLX             R2
26D10A:  MOV             R4, R0
26D10C:  LDR             R0, =(s_localizedPrice_ptr - 0x26D116)
26D10E:  LDR             R1, =(dword_6D81DC - 0x26D118)
26D110:  MOV             R3, R4
26D112:  ADD             R0, PC; s_localizedPrice_ptr
26D114:  ADD             R1, PC; dword_6D81DC
26D116:  LDR             R0, [R0]; s_localizedPrice
26D118:  LDR             R1, [R1]
26D11A:  LDR             R2, [R0]
26D11C:  MOV             R0, R5
26D11E:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26D122:  MOV             R8, R0
26D124:  LDR             R0, [R5]
26D126:  MOV             R1, R4
26D128:  LDR             R2, [R0,#0x5C]
26D12A:  MOV             R0, R5
26D12C:  BLX             R2
26D12E:  LDR             R0, [R5]
26D130:  MOV             R1, R8
26D132:  MOVS            R2, #0
26D134:  LDR.W           R3, [R0,#0x2A4]
26D138:  MOV             R0, R5
26D13A:  BLX             R3
26D13C:  MOV             R4, R0
26D13E:  LDR             R0, =(priceBuffer_ptr - 0x26D146)
26D140:  MOV             R1, R4; char *
26D142:  ADD             R0, PC; priceBuffer_ptr
26D144:  LDR             R6, [R0]; priceBuffer
26D146:  MOV             R0, R6; char *
26D148:  BLX             strcpy
26D14C:  LDR             R0, [R5]
26D14E:  MOV             R1, R8
26D150:  MOV             R2, R4
26D152:  LDR.W           R3, [R0,#0x2A8]
26D156:  MOV             R0, R5
26D158:  BLX             R3
26D15A:  MOV             R0, R6; char *
26D15C:  POP.W           {R8}
26D160:  POP.W           {R4-R7,LR}
26D164:  B.W             sub_18B6EC
26D168:  MOVS            R0, #0
26D16A:  POP.W           {R8}
26D16E:  POP             {R4-R7,PC}
