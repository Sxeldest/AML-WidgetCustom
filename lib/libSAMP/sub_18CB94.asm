; =========================================================
; Game Engine Function: sub_18CB94
; Address            : 0x18CB94 - 0x18CC56
; =========================================================

18CB94:  PUSH            {R4-R7,LR}
18CB96:  ADD             R7, SP, #0xC
18CB98:  PUSH.W          {R8-R10}
18CB9C:  SUB             SP, SP, #0x18
18CB9E:  MOV             R8, R1
18CBA0:  MOVS            R0, #2; domain
18CBA2:  MOVS            R1, #2; type
18CBA4:  MOVS            R2, #0; protocol
18CBA6:  MOV             R10, R3
18CBA8:  BLX             socket
18CBAC:  MOV             R4, R0
18CBAE:  ADDS            R0, #1
18CBB0:  BEQ             loc_18CC02
18CBB2:  ADD             R6, SP, #0x30+optval
18CBB4:  MOVS            R0, #1
18CBB6:  STR             R0, [SP,#0x30+optval]
18CBB8:  MOVS            R5, #4
18CBBA:  MOV             R0, R4; fd
18CBBC:  MOVS            R1, #1; level
18CBBE:  MOVS            R2, #2; optname
18CBC0:  MOV             R3, R6; optval
18CBC2:  STR             R5, [SP,#0x30+optlen]; optlen
18CBC4:  MOV.W           R9, #2
18CBC8:  BLX             setsockopt
18CBCC:  MOV.W           R0, #0x40000
18CBD0:  MOVS            R1, #1; level
18CBD2:  STRD.W          R5, R0, [SP,#0x30+optlen]; optlen
18CBD6:  MOV             R0, R4; fd
18CBD8:  MOVS            R2, #8; optname
18CBDA:  MOV             R3, R6; optval
18CBDC:  BLX             setsockopt
18CBE0:  MOV.W           R0, #0x4000
18CBE4:  MOVS            R1, #1; level
18CBE6:  STRD.W          R5, R0, [SP,#0x30+optlen]; optlen
18CBEA:  MOV             R0, R4; fd
18CBEC:  MOVS            R2, #7; optname
18CBEE:  MOV             R3, R6; optval
18CBF0:  BLX             setsockopt
18CBF4:  MOV             R0, R4; fd
18CBF6:  MOVS            R1, #4; cmd
18CBF8:  MOV.W           R2, #0x800
18CBFC:  BLX             fcntl
18CC00:  CBZ             R0, loc_18CC08
18CC02:  MOV.W           R4, #0xFFFFFFFF
18CC06:  B               loc_18CC4C
18CC08:  ADD             R3, SP, #0x30+optval; optval
18CC0A:  MOV             R0, R4; fd
18CC0C:  MOVS            R1, #1; level
18CC0E:  MOVS            R2, #6; optname
18CC10:  STR             R5, [SP,#0x30+optlen]; optlen
18CC12:  BLX             setsockopt
18CC16:  REV16.W         R0, R8
18CC1A:  STRH.W          R0, [SP,#0x30+addr.sa_data]
18CC1E:  STRH.W          R9, [SP,#0x30+addr]
18CC22:  CMP.W           R10, #0
18CC26:  ITT NE
18CC28:  LDRBNE.W        R0, [R10]
18CC2C:  CMPNE           R0, #0
18CC2E:  BNE             loc_18CC34
18CC30:  MOVS            R0, #0
18CC32:  B               loc_18CC3A
18CC34:  MOV             R0, R10; cp
18CC36:  BLX             inet_addr
18CC3A:  ADD             R1, SP, #0x30+addr; addr
18CC3C:  STR             R0, [SP,#0x30+addr.sa_data+2]
18CC3E:  MOV             R0, R4; fd
18CC40:  MOVS            R2, #0x10; len
18CC42:  BLX             bind
18CC46:  ADDS            R1, R0, #1
18CC48:  IT EQ
18CC4A:  MOVEQ           R4, R0
18CC4C:  MOV             R0, R4
18CC4E:  ADD             SP, SP, #0x18
18CC50:  POP.W           {R8-R10}
18CC54:  POP             {R4-R7,PC}
