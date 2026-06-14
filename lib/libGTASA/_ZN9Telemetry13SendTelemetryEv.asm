; =========================================================
; Game Engine Function: _ZN9Telemetry13SendTelemetryEv
; Address            : 0x2ACD38 - 0x2ACF78
; =========================================================

2ACD38:  PUSH            {R4-R7,LR}
2ACD3A:  ADD             R7, SP, #0xC
2ACD3C:  PUSH.W          {R8}
2ACD40:  SUB             SP, SP, #0x10
2ACD42:  ADD             R0, SP, #0x20+tv; tv
2ACD44:  MOVS            R1, #0; tz
2ACD46:  BLX             gettimeofday
2ACD4A:  ADD             R0, SP, #0x20+tv; tv
2ACD4C:  MOVS            R1, #0; tz
2ACD4E:  BLX             gettimeofday
2ACD52:  LDR             R0, =(firstStartTime_ptr - 0x2ACD5E)
2ACD54:  MOV.W           R2, #0x3E8
2ACD58:  LDR             R1, [SP,#0x20+tv]
2ACD5A:  ADD             R0, PC; firstStartTime_ptr
2ACD5C:  MULS            R1, R2
2ACD5E:  LDR             R0, [R0]; firstStartTime
2ACD60:  LDRD.W          R0, R2, [R0]
2ACD64:  SUBS            R0, R1, R0
2ACD66:  MOV.W           R3, R1,ASR#31
2ACD6A:  SBC.W           R1, R3, R2
2ACD6E:  MOVW            R2, #0x5C00
2ACD72:  MOVS            R3, #0
2ACD74:  MOVT            R2, #0x526
2ACD78:  BLX             __aeabi_ldivmod
2ACD7C:  CMP             R0, #0x1E
2ACD7E:  BLT             loc_2ACE6E
2ACD80:  LDR             R0, =(DailyUse_ptr - 0x2ACD88)
2ACD82:  LDR             R1, =(TimeInBackground_ptr - 0x2ACD8A)
2ACD84:  ADD             R0, PC; DailyUse_ptr
2ACD86:  ADD             R1, PC; TimeInBackground_ptr
2ACD88:  LDR             R0, [R0]; DailyUse
2ACD8A:  LDR             R1, [R1]; TimeInBackground
2ACD8C:  MOV             R2, R0
2ACD8E:  VLD1.32         {D16-D17}, [R2]!
2ACD92:  MOV             R3, R1
2ACD94:  VLD1.32         {D20-D21}, [R2]
2ACD98:  ADD.W           R2, R0, #0x20 ; ' '
2ACD9C:  VADD.I32        Q8, Q10, Q8
2ACDA0:  VLD1.32         {D22-D23}, [R2]
2ACDA4:  ADD.W           R2, R0, #0x30 ; '0'
2ACDA8:  VADD.I32        Q8, Q11, Q8
2ACDAC:  VLD1.32         {D24-D25}, [R2]
2ACDB0:  ADD.W           R2, R0, #0x40 ; '@'
2ACDB4:  VADD.I32        Q8, Q12, Q8
2ACDB8:  VLD1.32         {D18-D19}, [R3]!
2ACDBC:  VLD1.32         {D26-D27}, [R2]
2ACDC0:  ADD.W           R2, R0, #0x50 ; 'P'
2ACDC4:  VADD.I32        Q8, Q13, Q8
2ACDC8:  VLD1.32         {D30-D31}, [R3]
2ACDCC:  VADD.I32        Q9, Q15, Q9
2ACDD0:  VLD1.32         {D28-D29}, [R2]
2ACDD4:  ADD.W           R2, R1, #0x20 ; ' '
2ACDD8:  VADD.I32        Q8, Q14, Q8
2ACDDC:  VLD1.32         {D30-D31}, [R2]
2ACDE0:  ADD.W           R2, R1, #0x30 ; '0'
2ACDE4:  VADD.I32        Q9, Q15, Q9
2ACDE8:  VLD1.32         {D20-D21}, [R2]
2ACDEC:  ADD.W           R2, R1, #0x40 ; '@'
2ACDF0:  VADD.I32        Q9, Q10, Q9
2ACDF4:  VLD1.32         {D20-D21}, [R2]
2ACDF8:  ADD.W           R2, R1, #0x50 ; 'P'
2ACDFC:  VADD.I32        Q9, Q10, Q9
2ACE00:  VLD1.32         {D20-D21}, [R2]
2ACE04:  ADD.W           R2, R1, #0x60 ; '`'
2ACE08:  VADD.I32        Q9, Q10, Q9
2ACE0C:  VLD1.32         {D20-D21}, [R2]
2ACE10:  ADD.W           R2, R0, #0x60 ; '`'
2ACE14:  VADD.I32        Q9, Q10, Q9
2ACE18:  VLD1.32         {D20-D21}, [R2]
2ACE1C:  VADD.I32        Q8, Q10, Q8
2ACE20:  LDRD.W          R6, R1, [R1,#(dword_6F236C - 0x6F22FC)]
2ACE24:  LDRD.W          R5, R0, [R0,#(dword_6F22F4 - 0x6F2284)]
2ACE28:  VEXT.8          Q10, Q9, Q8, #8
2ACE2C:  VADD.I32        Q9, Q9, Q10
2ACE30:  VEXT.8          Q11, Q8, Q8, #8
2ACE34:  VADD.I32        Q8, Q8, Q11
2ACE38:  VDUP.32         Q10, D18[1]
2ACE3C:  VADD.I32        Q9, Q9, Q10
2ACE40:  VDUP.32         Q10, D16[1]
2ACE44:  VADD.I32        Q8, Q8, Q10
2ACE48:  VMOV.32         R2, D18[0]
2ACE4C:  VMOV.32         R3, D16[0]
2ACE50:  ADD             R2, R6
2ACE52:  ADD             R1, R2
2ACE54:  MOV             R2, #0x88888889
2ACE5C:  UMULL.W         R1, R6, R1, R2
2ACE60:  ADDS            R1, R5, R3
2ACE62:  ADD             R0, R1
2ACE64:  UMULL.W         R0, R1, R0, R2
2ACE68:  LSRS            R3, R6, #4
2ACE6A:  LSRS            R6, R1, #4
2ACE6C:  B               loc_2ACF20
2ACE6E:  ADD.W           R8, R0, #1
2ACE72:  CMP             R0, #0
2ACE74:  BLT             loc_2ACF0A
2ACE76:  CMP.W           R8, #3
2ACE7A:  BLS             loc_2ACEDA
2ACE7C:  BIC.W           R1, R8, #3
2ACE80:  CBZ             R1, loc_2ACEDA
2ACE82:  LDR             R0, =(DailyUse_ptr - 0x2ACE92)
2ACE84:  VMOV.I32        Q8, #0
2ACE88:  LDR             R2, =(TimeInBackground_ptr - 0x2ACE96)
2ACE8A:  VMOV.I32        Q9, #0
2ACE8E:  ADD             R0, PC; DailyUse_ptr
2ACE90:  MOV             R3, R1
2ACE92:  ADD             R2, PC; TimeInBackground_ptr
2ACE94:  LDR             R0, [R0]; DailyUse
2ACE96:  LDR             R2, [R2]; TimeInBackground
2ACE98:  VLD1.32         {D20-D21}, [R2]!
2ACE9C:  SUBS            R3, #4
2ACE9E:  VADD.I32        Q9, Q10, Q9
2ACEA2:  VLD1.32         {D22-D23}, [R0]!
2ACEA6:  VADD.I32        Q8, Q11, Q8
2ACEAA:  BNE             loc_2ACE98
2ACEAC:  VEXT.8          Q11, Q9, Q8, #8
2ACEB0:  CMP             R8, R1
2ACEB2:  VEXT.8          Q10, Q8, Q8, #8
2ACEB6:  VADD.I32        Q9, Q9, Q11
2ACEBA:  VADD.I32        Q8, Q8, Q10
2ACEBE:  VDUP.32         Q11, D18[1]
2ACEC2:  VDUP.32         Q10, D16[1]
2ACEC6:  VADD.I32        Q9, Q9, Q11
2ACECA:  VADD.I32        Q8, Q8, Q10
2ACECE:  VMOV.32         R5, D18[0]
2ACED2:  VMOV.32         R0, D16[0]
2ACED6:  BNE             loc_2ACEE0
2ACED8:  B               loc_2ACF0E
2ACEDA:  MOVS            R0, #0
2ACEDC:  MOVS            R5, #0
2ACEDE:  MOVS            R1, #0
2ACEE0:  LDR             R2, =(TimeInBackground_ptr - 0x2ACEE8)
2ACEE2:  LDR             R3, =(DailyUse_ptr - 0x2ACEEA)
2ACEE4:  ADD             R2, PC; TimeInBackground_ptr
2ACEE6:  ADD             R3, PC; DailyUse_ptr
2ACEE8:  LDR             R6, [R2]; TimeInBackground
2ACEEA:  SUB.W           R2, R8, R1
2ACEEE:  LDR             R4, [R3]; DailyUse
2ACEF0:  ADD.W           R3, R6, R1,LSL#2
2ACEF4:  ADD.W           R1, R4, R1,LSL#2
2ACEF8:  LDR.W           R6, [R3],#4
2ACEFC:  SUBS            R2, #1
2ACEFE:  LDR.W           R4, [R1],#4
2ACF02:  ADD             R5, R6
2ACF04:  ADD             R0, R4
2ACF06:  BNE             loc_2ACEF8
2ACF08:  B               loc_2ACF0E
2ACF0A:  MOVS            R5, #0
2ACF0C:  MOVS            R0, #0
2ACF0E:  MOV             R1, R8
2ACF10:  BLX             __aeabi_uidiv
2ACF14:  MOV             R6, R0
2ACF16:  MOV             R0, R5
2ACF18:  MOV             R1, R8
2ACF1A:  BLX             __aeabi_uidiv
2ACF1E:  MOV             R3, R0
2ACF20:  LDR             R0, =(strforjson_ptr - 0x2ACF2A)
2ACF22:  ADR             R1, aUDID; "{\"u\":%d,\"i\":%d}"
2ACF24:  MOV             R2, R6
2ACF26:  ADD             R0, PC; strforjson_ptr
2ACF28:  LDR             R4, [R0]; strforjson
2ACF2A:  MOV             R0, R4
2ACF2C:  BL              sub_5E6BC0
2ACF30:  ADR             R0, aUsage; "usage"
2ACF32:  MOV             R1, R4; char *
2ACF34:  BLX             _Z17TelemetryDataSendPKcS0_; TelemetryDataSend(char const*,char const*)
2ACF38:  MOVS            R0, #0; int
2ACF3A:  BLX             j__Z21OS_SystemGetBuildinfoi; OS_SystemGetBuildinfo(int)
2ACF3E:  MOVS            R0, #0; int
2ACF40:  BLX             j__Z21OS_SystemGetBuildinfoi; OS_SystemGetBuildinfo(int)
2ACF44:  MOV             R5, R0
2ACF46:  MOVS            R0, #1; int
2ACF48:  BLX             j__Z21OS_SystemGetBuildinfoi; OS_SystemGetBuildinfo(int)
2ACF4C:  MOV             R6, R0
2ACF4E:  MOVS            R0, #2; int
2ACF50:  BLX             j__Z21OS_SystemGetBuildinfoi; OS_SystemGetBuildinfo(int)
2ACF54:  ADR             R1, aAndSSS; "{\"and_%s_%s_%s\"}"
2ACF56:  STR             R0, [SP,#0x20+var_20]
2ACF58:  MOV             R0, R4
2ACF5A:  MOV             R2, R5
2ACF5C:  MOV             R3, R6
2ACF5E:  BL              sub_5E6BC0
2ACF62:  ADR             R0, aDevice; "device"
2ACF64:  MOV             R1, R4; char *
2ACF66:  BLX             _Z17TelemetryDataSendPKcS0_; TelemetryDataSend(char const*,char const*)
2ACF6A:  ADD             SP, SP, #0x10
2ACF6C:  POP.W           {R8}
2ACF70:  POP.W           {R4-R7,LR}
2ACF74:  B.W             j__Z18TelemetryDataFlushv; TelemetryDataFlush(void)
