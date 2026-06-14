; =========================================================
; Game Engine Function: sub_103C40
; Address            : 0x103C40 - 0x103E62
; =========================================================

103C40:  PUSH            {R4-R7,LR}
103C42:  ADD             R7, SP, #0xC
103C44:  PUSH.W          {R8-R11}
103C48:  SUB             SP, SP, #4
103C4A:  VPUSH           {D8-D14}
103C4E:  SUB             SP, SP, #0x80
103C50:  MOV             R4, R0
103C52:  LDR             R0, =(_ZTV10CPlayerPed - 0x103C64); `vtable for'CPlayerPed ...
103C54:  VMOV            S18, R3
103C58:  VLDR            S22, [R7,#arg_8]
103C5C:  VLDR            S20, [R7,#arg_4]
103C60:  ADD             R0, PC; `vtable for'CPlayerPed
103C62:  VLDR            S16, [R7,#arg_0]
103C66:  VMOV.I32        Q9, #0
103C6A:  VCVT.F64.F32    D16, S22
103C6E:  ADDS            R0, #8
103C70:  MOV             R5, R1
103C72:  LDR             R1, =(aAxl - 0x103C94); "AXL" ...
103C74:  MOV             R8, R2
103C76:  LDR             R2, =(aCreatingPlayer - 0x103C96); "Creating PlayerPed(%d %d %.1f %.1f %.1f"... ...
103C78:  STR             R0, [R4]
103C7A:  ADD.W           R0, R4, #0x48 ; 'H'
103C7E:  MOVS            R3, #0xFF
103C80:  MOV.W           R9, #0
103C84:  VCVT.F64.F32    D12, S20
103C88:  STRB.W          R3, [R4,#0x38]
103C8C:  MOV.W           R3, #0xFFFFFFFF
103C90:  ADD             R1, PC; "AXL"
103C92:  ADD             R2, PC; "Creating PlayerPed(%d %d %.1f %.1f %.1f"...
103C94:  STRD.W          R3, R3, [R4,#0x6C]
103C98:  MOV             R3, R5
103C9A:  STR.W           R9, [R4,#0x3D]
103C9E:  STRD.W          R9, R9, [R4,#4]
103CA2:  VCVT.F64.F32    D13, S16
103CA6:  STR.W           R9, [R4,#0x39]
103CAA:  STR.W           R9, [R4,#0x40]
103CAE:  STR             R5, [SP,#0xD8+var_5C]
103CB0:  VCVT.F64.F32    D14, S18
103CB4:  VST1.32         {D18-D19}, [R0]!
103CB8:  STR.W           R9, [R0]
103CBC:  MOVS            R0, #4; prio
103CBE:  VSTR            D14, [SP,#0xD8+var_D0]
103CC2:  VSTR            D13, [SP,#0xD8+var_C8]
103CC6:  VSTR            D12, [SP,#0xD8+var_C0]
103CCA:  VSTR            D16, [SP,#0xD8+var_B8]
103CCE:  STR.W           R8, [SP,#0xD8+var_D8]
103CD2:  BLX             __android_log_print
103CD6:  VMOV            R2, R3, D14
103CDA:  LDR             R0, =(unk_B364A - 0x103CE4)
103CDC:  ADD             R6, SP, #0xD8+var_5C
103CDE:  ADD             R5, SP, #0xD8+var_60
103CE0:  ADD             R0, PC; unk_B364A
103CE2:  STR             R5, [SP,#0xD8+var_C8]
103CE4:  MOV             R1, R6
103CE6:  VSTR            D13, [SP,#0xD8+var_D8]
103CEA:  VSTR            D12, [SP,#0xD8+var_D0]
103CEE:  BL              sub_107188
103CF2:  LDR             R0, =(unk_B365E - 0x103CFC)
103CF4:  MOV             R1, R6
103CF6:  MOV             R2, R5
103CF8:  ADD             R0, PC; unk_B365E
103CFA:  BL              sub_107188
103CFE:  LDR             R0, [SP,#0xD8+var_60]
103D00:  STR             R0, [R4,#8]
103D02:  BL              sub_1082F4
103D06:  MOV             R1, R0
103D08:  LDRB.W          R0, [SP,#0xD8+var_5C]
103D0C:  STR             R1, [R4,#0x5C]
103D0E:  STR             R1, [R4,#4]
103D10:  STRB.W          R0, [R4,#0x60]
103D14:  BL              sub_108D34
103D18:  LDR             R0, =(aIi - 0x103D24); "~\bii" ...
103D1A:  MOVS            R2, #1
103D1C:  LDR             R1, [R4,#8]
103D1E:  MOVS            R5, #1
103D20:  ADD             R0, PC; "~\bii"
103D22:  BL              sub_107188
103D26:  LDR             R1, [R4,#8]
103D28:  MOVS            R2, #0
103D2A:  LDR             R0, =(unk_B3672 - 0x103D36)
103D2C:  MOVS            R3, #0
103D2E:  STRD.W          R5, R9, [SP,#0xD8+var_D8]
103D32:  ADD             R0, PC; unk_B3672
103D34:  STR.W           R9, [SP,#0xD8+var_D0]
103D38:  BL              sub_107188
103D3C:  LDR             R0, =(unk_B3636 - 0x103D46)
103D3E:  MOVS            R2, #0
103D40:  LDR             R1, [R4,#8]
103D42:  ADD             R0, PC; unk_B3636
103D44:  BL              sub_107188
103D48:  LDR             R0, =(off_23496C - 0x103D4E)
103D4A:  ADD             R0, PC; off_23496C
103D4C:  LDR             R6, [R0]; dword_23DEF4
103D4E:  LDR             R0, [R6]
103D50:  CBZ             R0, loc_103D70
103D52:  LDR             R5, =(unk_B3686 - 0x103D5C)
103D54:  MOVS            R2, #0
103D56:  LDR             R1, [R4,#8]
103D58:  ADD             R5, PC; unk_B3686
103D5A:  MOV             R0, R5
103D5C:  BL              sub_107188
103D60:  LDR             R0, [R6]
103D62:  LDR             R1, [R4,#8]
103D64:  LDR.W           R0, [R0,#0x20C]
103D68:  LDR             R2, [R0,#4]
103D6A:  MOV             R0, R5
103D6C:  BL              sub_107188
103D70:  MOV             R0, R4
103D72:  MOV             R1, R8
103D74:  STRD.W          R9, R9, [R4,#0x64]
103D78:  BL              sub_103E90
103D7C:  LDR             R0, [R4,#0x5C]
103D7E:  CBZ             R0, loc_103DA4
103D80:  LDR             R0, [R4,#8]
103D82:  BL              sub_1082F4
103D86:  CBZ             R0, loc_103DA4
103D88:  VMOV            R5, S22
103D8C:  MOV             R0, R5
103D8E:  BL              sub_108728
103D92:  LDR             R1, [R4,#0x5C]
103D94:  STR.W           R0, [R1,#0x560]
103D98:  MOV             R0, R5
103D9A:  BL              sub_108728
103D9E:  LDR             R1, [R4,#0x5C]
103DA0:  STR.W           R0, [R1,#0x55C]
103DA4:  ADD             R1, SP, #0xD8+var_A0
103DA6:  MOV             R0, R4
103DA8:  BL              sub_F8910
103DAC:  VLDR            S0, =0.15
103DB0:  ADD.W           LR, SP, #0xD8+var_8C
103DB4:  LDRD.W          R6, R1, [SP,#0xD8+var_78]
103DB8:  ADD.W           R10, SP, #0xD8+var_9C
103DBC:  VADD.F32        S0, S20, S0
103DC0:  LDR             R0, [SP,#0xD8+var_A0]
103DC2:  STR             R0, [SP,#0xD8+var_A4]
103DC4:  LDM.W           LR, {R9,R12,LR}
103DC8:  LDR             R0, [SP,#0xD8+var_64]
103DCA:  STR             R1, [SP,#0xD8+var_B8]
103DCC:  LDR             R1, [SP,#0xD8+var_A4]
103DCE:  STR             R0, [SP,#0xD8+var_A8]
103DD0:  ADD             R0, SP, #0xD8+var_D0
103DD2:  LDM.W           R10, {R2,R3,R8,R10}
103DD6:  LDRD.W          R11, R5, [SP,#0xD8+var_80]
103DDA:  STM.W           R0, {R9,R12,LR}
103DDE:  MOV             R0, R4
103DE0:  VSTR            S16, [SP,#0xD8+var_6C]
103DE4:  VSTR            S18, [SP,#0xD8+var_70]
103DE8:  VSTR            S0, [SP,#0xD8+var_68]
103DEC:  VSTR            S18, [SP,#0xD8+var_B8+4]
103DF0:  VSTR            S16, [SP,#0xD8+var_B0]
103DF4:  VSTR            S0, [SP,#0xD8+var_AC]
103DF8:  STRD.W          R8, R10, [SP,#0xD8+var_D8]
103DFC:  STRD.W          R11, R5, [SP,#0xD8+var_C8+4]
103E00:  STR             R6, [SP,#0xD8+var_C0+4]
103E02:  BL              sub_F894A
103E06:  VMOV.I32        Q8, #0
103E0A:  MOVS            R0, #0
103E0C:  MOVS            R1, #0x20 ; ' '
103E0E:  MOVS            R2, #0
103E10:  ADDS            R3, R4, R2
103E12:  STRB.W          R0, [R3,#0x74]
103E16:  ADD.W           R3, R4, R1,LSL#2
103E1A:  VST1.32         {D16-D17}, [R3]!
103E1E:  ADDS            R1, #0xD
103E20:  CMP             R1, #0xA2
103E22:  VST1.32         {D16-D17}, [R3]!
103E26:  VST1.32         {D16-D17}, [R3]!
103E2A:  STR             R0, [R3]
103E2C:  ADD.W           R3, R4, R2,LSL#2
103E30:  ADD.W           R2, R2, #1
103E34:  STR.W           R0, [R3,#0x288]
103E38:  BNE             loc_103E10
103E3A:  VMOV.I32        Q8, #0
103E3E:  ADD.W           R1, R4, #0x10
103E42:  MOVS            R0, #0
103E44:  STRB            R0, [R4,#0xC]
103E46:  VST1.32         {D16-D17}, [R1]!
103E4A:  VST1.32         {D16-D17}, [R1]!
103E4E:  STR             R0, [R4,#0x34]
103E50:  STR             R0, [R1]
103E52:  MOV             R0, R4
103E54:  ADD             SP, SP, #0x80
103E56:  VPOP            {D8-D14}
103E5A:  ADD             SP, SP, #4
103E5C:  POP.W           {R8-R11}
103E60:  POP             {R4-R7,PC}
