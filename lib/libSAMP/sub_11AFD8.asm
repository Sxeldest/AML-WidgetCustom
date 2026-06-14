; =========================================================
; Game Engine Function: sub_11AFD8
; Address            : 0x11AFD8 - 0x11B018
; =========================================================

11AFD8:  PUSH            {R7,LR}
11AFDA:  MOV             R7, SP
11AFDC:  LDR             R0, =(byte_2635E8 - 0x11AFE2)
11AFDE:  ADD             R0, PC; byte_2635E8
11AFE0:  LDRB            R0, [R0]
11AFE2:  DMB.W           ISH
11AFE6:  LSLS            R0, R0, #0x1F
11AFE8:  IT NE
11AFEA:  POPNE           {R7,PC}
11AFEC:  LDR             R0, =(byte_2635E8 - 0x11AFF2)
11AFEE:  ADD             R0, PC; byte_2635E8 ; __guard *
11AFF0:  BLX             j___cxa_guard_acquire
11AFF4:  CBZ             R0, locret_11B016
11AFF6:  LDR             R1, =(unk_2635D0 - 0x11B002)
11AFF8:  MOVS            R3, #0
11AFFA:  LDR             R0, =(sub_11A7A8+1 - 0x11B004)
11AFFC:  LDR             R2, =(off_22A540 - 0x11B006)
11AFFE:  ADD             R1, PC; unk_2635D0 ; obj
11B000:  ADD             R0, PC; sub_11A7A8 ; lpfunc
11B002:  ADD             R2, PC; off_22A540 ; lpdso_handle
11B004:  STR             R3, [R1,#(dword_2635E0 - 0x2635D0)]
11B006:  BLX             __cxa_atexit
11B00A:  LDR             R0, =(byte_2635E8 - 0x11B010)
11B00C:  ADD             R0, PC; byte_2635E8
11B00E:  POP.W           {R7,LR}
11B012:  B.W             sub_2242B0
11B016:  POP             {R7,PC}
