; =========================================================
; Game Engine Function: _ZN8CGeneral11GetATanOfXYEff
; Address            : 0x3F4A94 - 0x3F4BC6
; =========================================================

3F4A94:  PUSH            {R7,LR}
3F4A96:  MOV             R7, SP
3F4A98:  VMOV            S0, R1
3F4A9C:  MOVS            R1, #0
3F4A9E:  VMOV            S2, R0
3F4AA2:  MOVS            R0, #0
3F4AA4:  VCMP.F32        S0, #0.0
3F4AA8:  VMRS            APSR_nzcv, FPSCR
3F4AAC:  VCMP.F32        S2, #0.0
3F4AB0:  IT EQ
3F4AB2:  MOVEQ           R1, #1
3F4AB4:  VMRS            APSR_nzcv, FPSCR
3F4AB8:  IT EQ
3F4ABA:  MOVEQ           R0, #1
3F4ABC:  TST             R0, R1
3F4ABE:  ITTT NE
3F4AC0:  VLDRNE          S0, =0.0
3F4AC4:  VMOVNE          R0, S0
3F4AC8:  POPNE           {R7,PC}
3F4ACA:  VABS.F32        S8, S0
3F4ACE:  VABS.F32        S10, S2
3F4AD2:  VNEG.F32        S4, S0
3F4AD6:  VNEG.F32        S6, S2
3F4ADA:  VCMPE.F32       S10, S8
3F4ADE:  VMRS            APSR_nzcv, FPSCR
3F4AE2:  BGE             loc_3F4B0A
3F4AE4:  VCMPE.F32       S0, #0.0
3F4AE8:  VMRS            APSR_nzcv, FPSCR
3F4AEC:  BLE             loc_3F4B2E
3F4AEE:  VCMPE.F32       S2, #0.0
3F4AF2:  VMRS            APSR_nzcv, FPSCR
3F4AF6:  BLE             loc_3F4B66
3F4AF8:  VDIV.F32        S0, S2, S0
3F4AFC:  VMOV            R0, S0; x
3F4B00:  BLX             atanf
3F4B04:  VLDR            S0, =1.5708
3F4B08:  B               loc_3F4B9A
3F4B0A:  VCMPE.F32       S0, #0.0
3F4B0E:  VMRS            APSR_nzcv, FPSCR
3F4B12:  BLE             loc_3F4B4A
3F4B14:  VCMPE.F32       S2, #0.0
3F4B18:  VMRS            APSR_nzcv, FPSCR
3F4B1C:  BLE             loc_3F4B78
3F4B1E:  VDIV.F32        S0, S0, S2
3F4B22:  VMOV            R0, S0; x
3F4B26:  POP.W           {R7,LR}
3F4B2A:  B.W             sub_19A704
3F4B2E:  VCMPE.F32       S2, #0.0
3F4B32:  VMRS            APSR_nzcv, FPSCR
3F4B36:  BLE             loc_3F4B8A
3F4B38:  VDIV.F32        S0, S2, S4
3F4B3C:  VMOV            R0, S0; x
3F4B40:  BLX             atanf
3F4B44:  VLDR            S0, =4.7124
3F4B48:  B               loc_3F4BB8
3F4B4A:  VCMPE.F32       S2, #0.0
3F4B4E:  VMRS            APSR_nzcv, FPSCR
3F4B52:  BLE             loc_3F4BA8
3F4B54:  VDIV.F32        S0, S4, S2
3F4B58:  VMOV            R0, S0; x
3F4B5C:  BLX             atanf
3F4B60:  VLDR            S0, =6.2832
3F4B64:  B               loc_3F4B9A
3F4B66:  VDIV.F32        S0, S6, S0
3F4B6A:  VMOV            R0, S0; x
3F4B6E:  BLX             atanf
3F4B72:  VLDR            S0, =1.5708
3F4B76:  B               loc_3F4BB8
3F4B78:  VDIV.F32        S0, S0, S6
3F4B7C:  VMOV            R0, S0; x
3F4B80:  BLX             atanf
3F4B84:  VLDR            S0, =3.1416
3F4B88:  B               loc_3F4B9A
3F4B8A:  VDIV.F32        S0, S2, S0
3F4B8E:  VMOV            R0, S0; x
3F4B92:  BLX             atanf
3F4B96:  VLDR            S0, =4.7124
3F4B9A:  VMOV            S2, R0
3F4B9E:  VSUB.F32        S0, S0, S2
3F4BA2:  VMOV            R0, S0
3F4BA6:  POP             {R7,PC}
3F4BA8:  VDIV.F32        S0, S0, S2
3F4BAC:  VMOV            R0, S0; x
3F4BB0:  BLX             atanf
3F4BB4:  VLDR            S0, =3.1416
3F4BB8:  VMOV            S2, R0
3F4BBC:  VADD.F32        S0, S2, S0
3F4BC0:  VMOV            R0, S0
3F4BC4:  POP             {R7,PC}
