; =========================================================
; Game Engine Function: _ZN6CPlane18AreWeInNoPlaneZoneEv
; Address            : 0x579078 - 0x57914C
; =========================================================

579078:  LDR             R0, =(TheCamera_ptr - 0x579082)
57907A:  VLDR            S4, =675.0
57907E:  ADD             R0, PC; TheCamera_ptr
579080:  VLDR            S8, =1073.0
579084:  VLDR            S10, =-50.0
579088:  LDR             R0, [R0]; TheCamera
57908A:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
57908C:  ADD.W           R2, R1, #0x30 ; '0'
579090:  CMP             R1, #0
579092:  IT EQ
579094:  ADDEQ           R2, R0, #4
579096:  VLDR            S2, [R2]
57909A:  VLDR            S0, [R2,#4]
57909E:  VADD.F32        S8, S2, S8
5790A2:  VLDR            S6, [R2,#8]
5790A6:  VADD.F32        S4, S0, S4
5790AA:  VADD.F32        S6, S6, S10
5790AE:  VMUL.F32        S8, S8, S8
5790B2:  VMUL.F32        S4, S4, S4
5790B6:  VMUL.F32        S6, S6, S6
5790BA:  VADD.F32        S4, S8, S4
5790BE:  VADD.F32        S4, S4, S6
5790C2:  VLDR            S6, =200.0
5790C6:  VSQRT.F32       S4, S4
5790CA:  VCMPE.F32       S4, S6
5790CE:  VMRS            APSR_nzcv, FPSCR
5790D2:  BGE             loc_5790D8
5790D4:  MOVS            R0, #1
5790D6:  BX              LR
5790D8:  VLDR            S4, =-2743.0
5790DC:  VCMPE.F32       S2, S4
5790E0:  VMRS            APSR_nzcv, FPSCR
5790E4:  BLE             loc_579110
5790E6:  VLDR            S4, =-2626.0
5790EA:  VCMPE.F32       S2, S4
5790EE:  VMRS            APSR_nzcv, FPSCR
5790F2:  BGE             loc_579110
5790F4:  VLDR            S4, =1300.0
5790F8:  VCMPE.F32       S0, S4
5790FC:  VMRS            APSR_nzcv, FPSCR
579100:  BLE             loc_579110
579102:  VLDR            S4, =2200.0
579106:  VCMPE.F32       S0, S4
57910A:  VMRS            APSR_nzcv, FPSCR
57910E:  BLT             loc_5790D4
579110:  VLDR            S4, =-1668.0
579114:  VCMPE.F32       S2, S4
579118:  VMRS            APSR_nzcv, FPSCR
57911C:  BLE             loc_579148
57911E:  VLDR            S4, =-1122.0
579122:  VCMPE.F32       S2, S4
579126:  VMRS            APSR_nzcv, FPSCR
57912A:  BGE             loc_579148
57912C:  VLDR            S2, =541.0
579130:  VCMPE.F32       S0, S2
579134:  VMRS            APSR_nzcv, FPSCR
579138:  BLE             loc_579148
57913A:  VLDR            S2, =1118.0
57913E:  VCMPE.F32       S0, S2
579142:  VMRS            APSR_nzcv, FPSCR
579146:  BLT             loc_5790D4
579148:  MOVS            R0, #0
57914A:  BX              LR
