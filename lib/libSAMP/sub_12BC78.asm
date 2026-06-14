; =========================================================
; Game Engine Function: sub_12BC78
; Address            : 0x12BC78 - 0x12BCD0
; =========================================================

12BC78:  PUSH            {R4,R6,R7,LR}
12BC7A:  ADD             R7, SP, #8
12BC7C:  VPUSH           {D8-D9}
12BC80:  MOV             R4, R0
12BC82:  LDR             R0, =(_ZTV6Widget - 0x12BC8A); `vtable for'Widget ...
12BC84:  ADR             R1, dword_12BCD0
12BC86:  ADD             R0, PC; `vtable for'Widget
12BC88:  VLD1.64         {D8-D9}, [R1]
12BC8C:  ADDS            R0, #8
12BC8E:  STR             R0, [R4]
12BC90:  BLX             pthread_self
12BC94:  VMOV.I32        Q8, #0
12BC98:  MOVS            R1, #0
12BC9A:  STRD.W          R0, R1, [R4,#4]
12BC9E:  ADD.W           R0, R4, #0x2C ; ','
12BCA2:  STRH.W          R1, [R4,#0x51]
12BCA6:  VST1.32         {D16-D17}, [R0]!
12BCAA:  VST1.32         {D16-D17}, [R0]!
12BCAE:  STR             R1, [R0]
12BCB0:  ADD.W           R0, R4, #0xC
12BCB4:  VST1.32         {D16-D17}, [R0]!
12BCB8:  MOVS            R1, #0x18
12BCBA:  VST1.32         {D8-D9}, [R0],R1
12BCBE:  MOVS            R1, #0x1C
12BCC0:  VST1.32         {D16-D17}, [R0],R1
12BCC4:  MOVS            R1, #1
12BCC6:  STRB            R1, [R0]
12BCC8:  MOV             R0, R4
12BCCA:  VPOP            {D8-D9}
12BCCE:  POP             {R4,R6,R7,PC}
