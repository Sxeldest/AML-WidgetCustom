; =========================================================
; Game Engine Function: sub_123FA0
; Address            : 0x123FA0 - 0x12408E
; =========================================================

123FA0:  PUSH            {R4-R7,LR}
123FA2:  ADD             R7, SP, #0xC
123FA4:  PUSH.W          {R8}
123FA8:  LDR             R0, =(byte_263C08 - 0x123FAE)
123FAA:  ADD             R0, PC; byte_263C08
123FAC:  LDRB            R0, [R0]
123FAE:  DMB.W           ISH
123FB2:  LDR             R5, =(dword_263C04 - 0x123FB8)
123FB4:  ADD             R5, PC; dword_263C04
123FB6:  LSLS            R0, R0, #0x1F
123FB8:  BEQ             loc_124034
123FBA:  LDR             R0, =(byte_263C10 - 0x123FC0)
123FBC:  ADD             R0, PC; byte_263C10
123FBE:  LDRB            R0, [R0]
123FC0:  DMB.W           ISH
123FC4:  LSLS            R0, R0, #0x1F
123FC6:  LDR             R0, =(dword_263C0C - 0x123FCC)
123FC8:  ADD             R0, PC; dword_263C0C
123FCA:  MOV             R8, R0
123FCC:  BEQ             loc_124062
123FCE:  MOVW            R0, #0x5DC; unsigned int
123FD2:  BLX             j__Znaj; operator new[](uint)
123FD6:  LDR             R1, [R5]
123FD8:  ADD.W           R2, R0, #0x5D0
123FDC:  ADD.W           R3, R1, #0xC
123FE0:  STR             R3, [R1,#8]
123FE2:  ADD.W           R3, R1, #0x24 ; '$'
123FE6:  STR             R2, [R1,#0x20]
123FE8:  STR.W           R3, [R0,#0x5D8]
123FEC:  LDR             R3, [R1,#0x20]
123FEE:  STR             R2, [R1,#0x28]
123FF0:  ADD.W           R2, R1, #0x18
123FF4:  STR.W           R3, [R0,#0x5CC]
123FF8:  MOVW            R3, #0x5C4
123FFC:  STR             R1, [R1,#0x10]
123FFE:  STR             R0, [R1,#0x30]
124000:  STR.W           R2, [R0,#0x5D4]
124004:  STR.W           R2, [R0,#0x5C8]
124008:  ADDS            R5, R0, R3
12400A:  SUBS            R3, #0xC
12400C:  SUB.W           R6, R5, #0xC
124010:  STR.W           R5, [R5,#-4]
124014:  LDR             R4, [R1,#0x20]
124016:  STR             R6, [R1,#0x20]
124018:  STR             R6, [R4,#4]
12401A:  STR.W           R2, [R5,#-8]
12401E:  BNE             loc_124008
124020:  LDR.W           R0, [R8]
124024:  MOVS            R1, #0
124026:  STR             R1, [R0]
124028:  POP.W           {R8}
12402C:  POP.W           {R4-R7,LR}
124030:  B.W             sub_124120
124034:  LDR             R0, =(byte_263C08 - 0x12403A)
124036:  ADD             R0, PC; byte_263C08 ; __guard *
124038:  BLX             j___cxa_guard_acquire
12403C:  CMP             R0, #0
12403E:  BEQ             loc_123FBA
124040:  LDR             R0, =(off_23494C - 0x12404E)
124042:  MOV             R1, #0x6773C4
12404A:  ADD             R0, PC; off_23494C
12404C:  LDR             R0, [R0]; dword_23DF24
12404E:  LDR             R0, [R0]
124050:  ADD             R0, R1
124052:  LDR.W           R1, [R0,#0x6C8]
124056:  LDR             R0, =(byte_263C08 - 0x12405E)
124058:  STR             R1, [R5]
12405A:  ADD             R0, PC; byte_263C08 ; __guard *
12405C:  BLX             j___cxa_guard_release
124060:  B               loc_123FBA
124062:  LDR             R0, =(byte_263C10 - 0x124068)
124064:  ADD             R0, PC; byte_263C10 ; __guard *
124066:  BLX             j___cxa_guard_acquire
12406A:  CMP             R0, #0
12406C:  BEQ             loc_123FCE
12406E:  LDR             R0, =(off_23494C - 0x12407C)
124070:  MOV             R1, #0x6773C4
124078:  ADD             R0, PC; off_23494C
12407A:  LDR             R0, [R0]; dword_23DF24
12407C:  LDR             R0, [R0]
12407E:  LDR             R1, [R0,R1]
124080:  LDR             R0, =(byte_263C10 - 0x12408A)
124082:  STR.W           R1, [R8]
124086:  ADD             R0, PC; byte_263C10 ; __guard *
124088:  BLX             j___cxa_guard_release
12408C:  B               loc_123FCE
