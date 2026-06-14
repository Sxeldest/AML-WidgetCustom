; =========================================================
; Game Engine Function: sub_13DB74
; Address            : 0x13DB74 - 0x13DBD6
; =========================================================

13DB74:  PUSH            {R4-R7,LR}
13DB76:  ADD             R7, SP, #0xC
13DB78:  PUSH.W          {R8,R9,R11}
13DB7C:  MOV             R8, R3
13DB7E:  MOV             R9, R2
13DB80:  MOV             R5, R1
13DB82:  MOV             R4, R0
13DB84:  BL              sub_12BC78
13DB88:  LDR             R0, =(_ZTV11ProgressBar - 0x13DB94); `vtable for'ProgressBar ...
13DB8A:  ADD.W           R6, R4, #0x60 ; '`'
13DB8E:  MOVS            R1, #0x60 ; '`'; n
13DB90:  ADD             R0, PC; `vtable for'ProgressBar
13DB92:  ADDS            R0, #8
13DB94:  STR             R0, [R4]
13DB96:  MOV             R0, R6; int
13DB98:  BLX             sub_22178C
13DB9C:  MOVS            R0, #1
13DB9E:  STR             R0, [R4,#0x54]
13DBA0:  MOVS            R0, #0x20 ; ' '
13DBA2:  VLD1.32         {D16-D17}, [R5]
13DBA6:  VST1.32         {D16-D17}, [R6],R0
13DBAA:  VLD1.32         {D16-D17}, [R9]
13DBAE:  VST1.32         {D16-D17}, [R6]!
13DBB2:  VLD1.32         {D16-D17}, [R8]
13DBB6:  LDR             R0, [R7,#arg_0]
13DBB8:  VST1.32         {D16-D17}, [R6]!
13DBBC:  VLD1.32         {D16-D17}, [R0]
13DBC0:  LDR             R0, [R7,#arg_4]
13DBC2:  VST1.32         {D16-D17}, [R6]!
13DBC6:  VLD1.32         {D16-D17}, [R0]
13DBCA:  MOV             R0, R4
13DBCC:  VST1.32         {D16-D17}, [R6]
13DBD0:  POP.W           {R8,R9,R11}
13DBD4:  POP             {R4-R7,PC}
