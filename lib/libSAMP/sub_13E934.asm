; =========================================================
; Game Engine Function: sub_13E934
; Address            : 0x13E934 - 0x13E9BC
; =========================================================

13E934:  PUSH            {R4,R5,R7,LR}
13E936:  ADD             R7, SP, #8
13E938:  MOV             R4, R0
13E93A:  MOV.W           R0, #0xFFFFFFFF
13E93E:  STRD.W          R0, R0, [R4,#0x1A4]
13E942:  MOVW            R0, #0xFFFF
13E946:  STRH            R0, [R4,#0x18]
13E948:  ADD.W           R0, R4, #0x9E; int
13E94C:  MOVS            R5, #0
13E94E:  MOVS            R1, #0x44 ; 'D'; n
13E950:  STRB.W          R5, [R4,#0x1D4]
13E954:  STR             R5, [R4,#0x14]
13E956:  STRB            R5, [R4]
13E958:  STRB.W          R5, [R4,#0x24]
13E95C:  STRB.W          R5, [R4,#0x22]
13E960:  BLX             sub_22178C
13E964:  VMOV.I32        Q8, #0
13E968:  ADDW            R0, R4, #0x15B
13E96C:  MOVS            R1, #0xE
13E96E:  STR.W           R5, [R4,#0x138]
13E972:  STR.W           R5, [R4,#0x18D]
13E976:  VST1.8          {D16-D17}, [R0]!
13E97A:  VST1.8          {D16-D17}, [R0]!
13E97E:  VST1.8          {D16-D17}, [R0],R1
13E982:  MOVS            R1, #0xF
13E984:  STR             R5, [R0]
13E986:  ADD.W           R0, R4, #0xE2
13E98A:  VST1.16         {D16-D17}, [R0]!
13E98E:  VST1.16         {D16-D17}, [R0]!
13E992:  VST1.16         {D16-D17}, [R0],R1
13E996:  MOVS            R1, #0x13
13E998:  VST1.8          {D16-D17}, [R0],R1
13E99C:  VST1.32         {D16-D17}, [R0]!
13E9A0:  STR             R5, [R4,#0x28]
13E9A2:  STR             R5, [R0]
13E9A4:  BL              sub_F0B30
13E9A8:  STR.W           R0, [R4,#0x1CC]
13E9AC:  STRB.W          R5, [R4,#0x2E]
13E9B0:  STR             R5, [R4,#0xC]
13E9B2:  BL              sub_F0B30
13E9B6:  STR.W           R0, [R4,#0x1D0]
13E9BA:  POP             {R4,R5,R7,PC}
