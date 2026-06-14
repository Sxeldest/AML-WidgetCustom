; =========================================================
; Game Engine Function: sub_60018
; Address            : 0x60018 - 0x60092
; =========================================================

60018:  PUSH            {R4-R7,LR}
6001A:  ADD             R7, SP, #0xC
6001C:  PUSH.W          {R8,R9,R11}
60020:  LDR             R4, =(dword_117394 - 0x6002A)
60022:  MOVS            R1, #1
60024:  LDR             R5, =(byte_1174AE - 0x6002C)
60026:  ADD             R4, PC; dword_117394
60028:  ADD             R5, PC; byte_1174AE
6002A:  LDR             R0, [R4]
6002C:  STRB            R1, [R5]
6002E:  LDR             R6, =(off_114A88 - 0x60034)
60030:  ADD             R6, PC; off_114A88
60032:  CBZ             R0, loc_6003E
60034:  LDR             R1, [R6]; off_1ABEE8
60036:  LDR             R1, [R1]
60038:  BLX             R1
6003A:  MOVS            R0, #0
6003C:  STR             R0, [R4]
6003E:  LDR             R0, =(off_114A8C - 0x6004C)
60040:  MOV             R9, R6
60042:  MOVS            R1, #0
60044:  MOV.W           R2, #0x940000
60048:  ADD             R0, PC; off_114A8C
6004A:  MOVS            R3, #0
6004C:  MOV.W           R8, #0
60050:  LDR             R0, [R0]; off_1ABEEC
60052:  LDR             R6, [R0]
60054:  LDR             R0, =(unk_117398 - 0x6005A)
60056:  ADD             R0, PC; unk_117398
60058:  BLX             R6
6005A:  LDR             R1, =(off_114A90 - 0x60062)
6005C:  STR             R0, [R4]
6005E:  ADD             R1, PC; off_114A90
60060:  LDR             R1, [R1]; off_1ABEF4
60062:  LDR             R2, [R1]
60064:  MOVS            R1, #0
60066:  BLX             R2
60068:  LDR             R6, =(byte_1174AD - 0x6006E)
6006A:  ADD             R6, PC; byte_1174AD
6006C:  LDRB            R0, [R6]
6006E:  CBNZ            R0, loc_6007A
60070:  MOV.W           R0, #0x7D0; useconds
60074:  BLX             usleep
60078:  B               loc_6006C
6007A:  LDR.W           R1, [R9]; off_1ABEE8
6007E:  LDR             R0, [R4]
60080:  LDR             R1, [R1]
60082:  BLX             R1
60084:  MOVS            R0, #0; retval
60086:  STR.W           R8, [R4]
6008A:  STRB.W          R8, [R5]
6008E:  BLX             pthread_exit
