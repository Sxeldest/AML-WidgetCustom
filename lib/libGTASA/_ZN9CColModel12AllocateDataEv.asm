; =========================================================
; Game Engine Function: _ZN9CColModel12AllocateDataEv
; Address            : 0x2E192E - 0x2E1960
; =========================================================

2E192E:  PUSH            {R4,R6,R7,LR}
2E1930:  ADD             R7, SP, #8
2E1932:  MOV             R4, R0
2E1934:  LDRB.W          R0, [R4,#0x29]
2E1938:  AND.W           R0, R0, #0xF9
2E193C:  STRB.W          R0, [R4,#0x29]
2E1940:  MOVS            R0, #0x34 ; '4'; unsigned int
2E1942:  BLX             _Znwj; operator new(uint)
2E1946:  VMOV.I32        Q8, #0
2E194A:  ADD.W           R1, R0, #0x20 ; ' '
2E194E:  VST1.32         {D16-D17}, [R1]
2E1952:  MOV             R1, R0
2E1954:  VST1.32         {D16-D17}, [R1]!
2E1958:  VST1.32         {D16-D17}, [R1]
2E195C:  STR             R0, [R4,#0x2C]
2E195E:  POP             {R4,R6,R7,PC}
