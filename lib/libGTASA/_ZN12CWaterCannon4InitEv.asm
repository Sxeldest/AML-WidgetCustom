; =========================================================
; Game Engine Function: _ZN12CWaterCannon4InitEv
; Address            : 0x5CAB80 - 0x5CABCE
; =========================================================

5CAB80:  MOV             R1, R0
5CAB82:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5CAB8E)
5CAB84:  ADR             R3, dword_5CABE0
5CAB86:  VMOV.I32        Q10, #0
5CAB8A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5CAB8C:  VLD1.64         {D18-D19}, [R3@128]
5CAB90:  MOVS            R3, #0
5CAB92:  ADR             R2, dword_5CABD0
5CAB94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5CAB96:  STRH            R3, [R1,#4]
5CAB98:  STR             R3, [R1]
5CAB9A:  ADD.W           R3, R1, #0x31C
5CAB9E:  VLD1.64         {D16-D17}, [R2@128]
5CABA2:  LDR             R2, =(unk_A7D080 - 0x5CABB2)
5CABA4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5CABA6:  VST1.8          {D20-D21}, [R3]
5CABAA:  ADD.W           R3, R1, #0x30C
5CABAE:  ADD             R2, PC; unk_A7D080
5CABB0:  VST1.8          {D20-D21}, [R3]
5CABB4:  STR             R0, [R1,#8]
5CABB6:  MOVS            R0, #0xA000B
5CABBC:  STR             R0, [R2,#(dword_A7D0A0 - 0xA7D080)]
5CABBE:  ADD.W           R0, R1, #0x32C
5CABC2:  VST1.16         {D16-D17}, [R2@128]!
5CABC6:  VST1.64         {D18-D19}, [R2@128]
5CABCA:  B.W             sub_193CA8
