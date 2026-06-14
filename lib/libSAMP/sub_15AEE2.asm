; =========================================================
; Game Engine Function: sub_15AEE2
; Address            : 0x15AEE2 - 0x15B07E
; =========================================================

15AEE2:  PUSH            {R4-R7,LR}
15AEE4:  ADD             R7, SP, #0xC
15AEE6:  PUSH.W          {R8-R10}
15AEEA:  SUB             SP, SP, #0x38
15AEEC:  MOV             R6, R1
15AEEE:  SUB.W           R1, R7, #-var_1A; int
15AEF2:  MOV             R5, R0
15AEF4:  MOVS            R4, #0
15AEF6:  MOV             R0, R6; int
15AEF8:  MOVS            R2, #0x10
15AEFA:  MOVS            R3, #1
15AEFC:  STRH.W          R4, [R7,#var_1A]
15AF00:  BL              sub_17D786
15AF04:  LDR             R0, [R5,#0x58]
15AF06:  LDRH.W          R1, [R7,#var_1A]
15AF0A:  BL              sub_152A9A
15AF0E:  CMP             R0, #0
15AF10:  BEQ.W           loc_15B076
15AF14:  MOV             R10, R0
15AF16:  LDR             R1, [R6]
15AF18:  LDR             R0, [R6,#8]
15AF1A:  STR             R4, [SP,#0x50+var_20]
15AF1C:  CMP             R0, R1
15AF1E:  STRD.W          R4, R4, [SP,#0x50+var_30]
15AF22:  STRD.W          R4, R4, [SP,#0x50+var_28]
15AF26:  STRH.W          R4, [R7,#var_32]
15AF2A:  BGE             loc_15AF5C
15AF2C:  LDR             R1, [R6,#0xC]
15AF2E:  ASRS            R2, R0, #3
15AF30:  LDRB            R1, [R1,R2]
15AF32:  ADDS            R2, R0, #1
15AF34:  AND.W           R0, R0, #7
15AF38:  STR             R2, [R6,#8]
15AF3A:  LSL.W           R0, R1, R0
15AF3E:  LSLS            R0, R0, #0x18
15AF40:  BPL             loc_15AF5C
15AF42:  ADD             R0, SP, #0x50+var_40; int
15AF44:  MOV             R1, R6; int
15AF46:  BL              sub_15B24E
15AF4A:  VLDR            D16, [SP,#0x50+var_40]
15AF4E:  MOV.W           R8, #0
15AF52:  LDR             R0, [SP,#0x50+var_38]
15AF54:  STR             R0, [SP,#0x50+var_28]
15AF56:  VSTR            D16, [SP,#0x50+var_30]
15AF5A:  B               loc_15AF6E
15AF5C:  MOV.W           R8, #1
15AF60:  SUB.W           R1, R7, #-var_32; int
15AF64:  MOV             R0, R6; int
15AF66:  MOVS            R2, #0x10
15AF68:  MOVS            R3, #1
15AF6A:  BL              sub_17D786
15AF6E:  ADD             R1, SP, #0x50+var_24; int
15AF70:  MOV             R0, R6; int
15AF72:  MOVS            R2, #0x20 ; ' '
15AF74:  MOVS            R3, #1
15AF76:  BL              sub_17D786
15AF7A:  ADD             R1, SP, #0x50+var_20; int
15AF7C:  MOV             R0, R6; int
15AF7E:  MOVS            R2, #0x20 ; ' '
15AF80:  MOVS            R3, #1
15AF82:  BL              sub_17D786
15AF86:  LDR             R1, [R6]
15AF88:  LDR             R0, [R6,#8]
15AF8A:  CMP             R0, R1
15AF8C:  BGE             loc_15AFA8
15AF8E:  LDR             R1, [R6,#0xC]
15AF90:  ASRS            R2, R0, #3
15AF92:  LDRB            R1, [R1,R2]
15AF94:  ADDS            R2, R0, #1
15AF96:  AND.W           R0, R0, #7
15AF9A:  STR             R2, [R6,#8]
15AF9C:  LSL.W           R0, R1, R0
15AFA0:  UXTB            R0, R0
15AFA2:  MOV.W           R9, R0,LSR#7
15AFA6:  B               loc_15AFAC
15AFA8:  MOV.W           R9, #0
15AFAC:  MOV             R0, R5
15AFAE:  BL              sub_155B70
15AFB2:  LDR             R1, [SP,#0x50+var_24]
15AFB4:  CMP.W           R8, #0
15AFB8:  SUB.W           R0, R0, R1
15AFBC:  BIC.W           R6, R0, R0,ASR#31
15AFC0:  BEQ             loc_15B048
15AFC2:  LDRH.W          R2, [R7,#var_32]
15AFC6:  ADD             R0, SP, #0x50+var_40
15AFC8:  MOV             R1, R5
15AFCA:  BL              sub_1552A0
15AFCE:  LDR             R0, [SP,#0x50+var_40]
15AFD0:  CBZ             R0, loc_15B01A
15AFD2:  LDR             R1, [SP,#0x50+var_40+4]
15AFD4:  STR             R0, [SP,#0x50+var_48]
15AFD6:  MOVS            R0, #0
15AFD8:  LDR             R2, [SP,#0x50+var_20]
15AFDA:  STR             R0, [SP,#0x50+var_40+4]
15AFDC:  STRD.W          R1, R0, [SP,#0x50+var_44]
15AFE0:  ADD             R1, SP, #0x50+var_48
15AFE2:  STRD.W          R0, R6, [SP,#0x50+var_50]
15AFE6:  MOV             R0, R10
15AFE8:  MOV             R3, R9
15AFEA:  BL              sub_150800
15AFEE:  LDR             R4, [SP,#0x50+var_44]
15AFF0:  CBZ             R4, loc_15B01A
15AFF2:  ADDS            R0, R4, #4
15AFF4:  DMB.W           ISH
15AFF8:  LDREX.W         R1, [R0]
15AFFC:  SUBS            R2, R1, #1
15AFFE:  STREX.W         R3, R2, [R0]
15B002:  CMP             R3, #0
15B004:  BNE             loc_15AFF8
15B006:  DMB.W           ISH
15B00A:  CBNZ            R1, loc_15B01A
15B00C:  LDR             R0, [R4]
15B00E:  LDR             R1, [R0,#8]
15B010:  MOV             R0, R4
15B012:  BLX             R1
15B014:  MOV             R0, R4; this
15B016:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15B01A:  LDR             R4, [SP,#0x50+var_40+4]
15B01C:  CBZ             R4, loc_15B068
15B01E:  ADDS            R0, R4, #4
15B020:  DMB.W           ISH
15B024:  LDREX.W         R1, [R0]
15B028:  SUBS            R2, R1, #1
15B02A:  STREX.W         R3, R2, [R0]
15B02E:  CMP             R3, #0
15B030:  BNE             loc_15B024
15B032:  DMB.W           ISH
15B036:  CBNZ            R1, loc_15B068
15B038:  LDR             R0, [R4]
15B03A:  LDR             R1, [R0,#8]
15B03C:  MOV             R0, R4
15B03E:  BLX             R1
15B040:  MOV             R0, R4; this
15B042:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15B046:  B               loc_15B068
15B048:  LDRB.W          R0, [SP,#0x50+var_30]
15B04C:  LDR             R1, [SP,#0x50+var_30+4]
15B04E:  LSLS            R2, R0, #0x1F
15B050:  IT EQ
15B052:  LSREQ           R1, R0, #1
15B054:  CBZ             R1, loc_15B068
15B056:  LDR             R2, [SP,#0x50+var_20]
15B058:  MOVS            R0, #0
15B05A:  ADD             R1, SP, #0x50+var_30
15B05C:  STRD.W          R0, R6, [SP,#0x50+var_50]
15B060:  MOV             R0, R10
15B062:  MOV             R3, R9
15B064:  BL              sub_150670
15B068:  LDRB.W          R0, [SP,#0x50+var_30]
15B06C:  LSLS            R0, R0, #0x1F
15B06E:  ITT NE
15B070:  LDRNE           R0, [SP,#0x50+var_28]; void *
15B072:  BLXNE           j__ZdlPv; operator delete(void *)
15B076:  ADD             SP, SP, #0x38 ; '8'
15B078:  POP.W           {R8-R10}
15B07C:  POP             {R4-R7,PC}
