; =========================================================
; Game Engine Function: sub_9EB08
; Address            : 0x9EB08 - 0x9EC36
; =========================================================

9EB08:  PUSH            {R4-R7,LR}
9EB0A:  ADD             R7, SP, #0xC
9EB0C:  PUSH.W          {R8-R11}
9EB10:  SUB             SP, SP, #4
9EB12:  VPUSH           {D8}
9EB16:  SUB             SP, SP, #0x100
9EB18:  MOV             R6, R1
9EB1A:  LDR             R1, =(aRb - 0x9EB26); "rb" ...
9EB1C:  MOV             R8, R0
9EB1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x9EB28)
9EB20:  MOV             R10, R2
9EB22:  ADD             R1, PC; "rb"
9EB24:  ADD             R0, PC; __stack_chk_guard_ptr
9EB26:  ADD             R2, SP, #0x128+var_11C
9EB28:  MOV             R4, R3
9EB2A:  MOVS            R5, #0
9EB2C:  LDR             R0, [R0]; __stack_chk_guard
9EB2E:  MOVS            R3, #0
9EB30:  LDR             R0, [R0]
9EB32:  STR             R0, [SP,#0x128+var_2C]
9EB34:  MOV             R0, R6
9EB36:  STR             R5, [SP,#0x128+var_11C]
9EB38:  BL              sub_8874C
9EB3C:  CMP             R0, #0
9EB3E:  BEQ             loc_9EC12
9EB40:  LDR.W           R11, [R7,#arg_0]
9EB44:  VMOV            S16, R10
9EB48:  MOV             R9, R0
9EB4A:  CBZ             R4, loc_9EB66
9EB4C:  ADD             R5, SP, #0x128+dest
9EB4E:  MOV             R1, R4; src
9EB50:  MOVS            R2, #0x74 ; 't'; n
9EB52:  MOV             R0, R5; dest
9EB54:  BLX             j_memcpy
9EB58:  LDRB.W          R0, [SP,#0x128+var_D0]
9EB5C:  CMP             R0, #0
9EB5E:  BNE             loc_9EBEA
9EB60:  ADD.W           R4, R5, #0x48 ; 'H'
9EB64:  B               loc_9EBBA
9EB66:  ADD             R0, SP, #0x128+dest
9EB68:  VMOV.I32        Q8, #0
9EB6C:  ADD.W           R4, R0, #0x48 ; 'H'
9EB70:  MOVS            R2, #0xC
9EB72:  ADDS            R0, #0x20 ; ' '
9EB74:  MOV             R1, R4
9EB76:  VST1.64         {D16-D17}, [R0]!
9EB7A:  VST1.64         {D16-D17}, [R1]!
9EB7E:  VST1.64         {D16-D17}, [R1],R2
9EB82:  MOVS            R2, #3
9EB84:  VST1.32         {D16-D17}, [R1]
9EB88:  MOVS            R1, #0
9EB8A:  STR             R1, [R0]
9EB8C:  MOV             R0, #0x7F7FFFFF
9EB94:  STRB.W          R1, [SP,#0x128+var_FC]
9EB98:  STR             R0, [SP,#0x128+var_E0]
9EB9A:  MOVS            R0, #1
9EB9C:  STR             R0, [SP,#0x128+var_100]
9EB9E:  STRB.W          R0, [SP,#0x128+var_110]
9EBA2:  MOV.W           R0, #0x3F800000
9EBA6:  STR             R2, [SP,#0x128+var_104]
9EBA8:  STRD.W          R1, R1, [SP,#0x128+var_10C]
9EBAC:  STRD.W          R1, R1, [SP,#0x128+dest]
9EBB0:  STR             R1, [SP,#0x128+var_E4]
9EBB2:  STRD.W          R1, R0, [SP,#0x128+var_D8]
9EBB6:  STRB.W          R1, [SP,#0x128+var_DC]
9EBBA:  MOV             R0, R6; s
9EBBC:  BLX             strlen
9EBC0:  ADD             R0, R6
9EBC2:  MOV             R3, R0
9EBC4:  CMP             R0, R6
9EBC6:  BLS             loc_9EBD6
9EBC8:  MOV             R0, R3
9EBCA:  LDRB.W          R1, [R0,#-1]!
9EBCE:  CMP             R1, #0x5C ; '\'
9EBD0:  IT NE
9EBD2:  CMPNE           R1, #0x2F ; '/'
9EBD4:  BNE             loc_9EBC2
9EBD6:  VCVT.F64.F32    D16, S16
9EBDA:  LDR             R2, =(aS0fpx - 0x9EBE4); "%s, %.0fpx" ...
9EBDC:  MOV             R0, R4; s
9EBDE:  MOVS            R1, #0x28 ; '('
9EBE0:  ADD             R2, PC; "%s, %.0fpx"
9EBE2:  VSTR            D16, [SP,#0x128+var_128]
9EBE6:  BL              sub_886C0
9EBEA:  ADD             R0, SP, #0x128+src; dest
9EBEC:  ADD             R1, SP, #0x128+dest; src
9EBEE:  MOVS            R2, #0x74 ; 't'; n
9EBF0:  LDR             R4, [SP,#0x128+var_11C]
9EBF2:  BLX             j_memcpy
9EBF6:  ADD             R1, SP, #0x128+src; src
9EBF8:  MOV             R0, R8; int
9EBFA:  VSTR            S16, [SP,#0x128+var_90]
9EBFE:  CMP.W           R11, #0
9EC02:  STRD.W          R9, R4, [SP,#0x128+src]
9EC06:  IT NE
9EC08:  STRNE.W         R11, [SP,#0x128+var_70]
9EC0C:  BL              sub_9E8A4
9EC10:  MOV             R5, R0
9EC12:  LDR             R0, [SP,#0x128+var_2C]
9EC14:  LDR             R1, =(__stack_chk_guard_ptr - 0x9EC1A)
9EC16:  ADD             R1, PC; __stack_chk_guard_ptr
9EC18:  LDR             R1, [R1]; __stack_chk_guard
9EC1A:  LDR             R1, [R1]
9EC1C:  CMP             R1, R0
9EC1E:  ITTTT EQ
9EC20:  MOVEQ           R0, R5
9EC22:  ADDEQ           SP, SP, #0x100
9EC24:  VPOPEQ          {D8}
9EC28:  ADDEQ           SP, SP, #4
9EC2A:  ITT EQ
9EC2C:  POPEQ.W         {R8-R11}
9EC30:  POPEQ           {R4-R7,PC}
9EC32:  BLX             __stack_chk_fail
