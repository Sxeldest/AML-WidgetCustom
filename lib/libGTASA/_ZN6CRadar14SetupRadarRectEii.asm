; =========================================================
; Game Engine Function: _ZN6CRadar14SetupRadarRectEii
; Address            : 0x442F80 - 0x442FB2
; =========================================================

442F80:  MOV.W           R2, #0x1F4
442F84:  RSB.W           R1, R1, #0xB
442F88:  MULS            R0, R2
442F8A:  MULS            R1, R2
442F8C:  VMOV.32         D16[0], R0
442F90:  ADR             R0, dword_442FC0
442F92:  VLD1.64         {D18-D19}, [R0@128]
442F96:  VMOV.32         D16[1], R1
442F9A:  LDR             R0, =(_ZN6CRadar11m_radarRectE_ptr - 0x442FA4)
442F9C:  VMOV            D17, D16
442FA0:  ADD             R0, PC; _ZN6CRadar11m_radarRectE_ptr
442FA2:  VADD.I32        Q8, Q8, Q9
442FA6:  LDR             R0, [R0]; CRadar::m_radarRect ...
442FA8:  VCVT.F32.S32    Q8, Q8
442FAC:  VST1.32         {D16-D17}, [R0]
442FB0:  BX              LR
