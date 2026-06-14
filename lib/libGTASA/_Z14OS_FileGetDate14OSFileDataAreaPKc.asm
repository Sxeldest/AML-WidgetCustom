; =========================================================
; Game Engine Function: _Z14OS_FileGetDate14OSFileDataAreaPKc
; Address            : 0x2677B0 - 0x267850
; =========================================================

2677B0:  PUSH            {R4-R7,LR}
2677B2:  ADD             R7, SP, #0xC
2677B4:  PUSH.W          {R8}
2677B8:  SUB             SP, SP, #0x68
2677BA:  MOV             R4, R1
2677BC:  MOV             R8, R0
2677BE:  MOV             R0, R4; char *
2677C0:  BLX             strlen
2677C4:  MOV             R5, R0
2677C6:  LDR             R0, =(BasePath_ptr - 0x2677CC)
2677C8:  ADD             R0, PC; BasePath_ptr
2677CA:  LDR             R0, [R0]; BasePath
2677CC:  LDR             R6, [R0]
2677CE:  MOV             R0, R6; char *
2677D0:  BLX             strlen
2677D4:  LDR             R1, =(StorageRootBuffer_ptr - 0x2677DC)
2677D6:  ADD             R5, R0
2677D8:  ADD             R1, PC; StorageRootBuffer_ptr
2677DA:  LDR             R1, [R1]; StorageRootBuffer
2677DC:  MOV             R0, R1; char *
2677DE:  BLX             strlen
2677E2:  ADD             R0, R5
2677E4:  ADDS            R0, #0xA; byte_count
2677E6:  BLX             malloc
2677EA:  MOV             R5, R0
2677EC:  CMP.W           R8, #1
2677F0:  BNE             loc_26781E
2677F2:  LDR             R0, =(StorageRootBuffer_ptr - 0x2677FC)
2677F4:  MOV             R3, R6
2677F6:  LDR             R1, =(aSS_6 - 0x2677FE); "%s/%s"
2677F8:  ADD             R0, PC; StorageRootBuffer_ptr
2677FA:  ADD             R1, PC; "%s/%s"
2677FC:  LDR             R2, [R0]; StorageRootBuffer
2677FE:  MOV             R0, R5
267800:  BL              sub_5E6BC0
267804:  MOV             R0, R5; dest
267806:  MOV             R1, R4; src
267808:  BLX             strcat
26780C:  MOV             R1, SP; buf
26780E:  MOV             R0, R5; file
267810:  BLX             stat
267814:  MOV             R4, R0
267816:  MOV             R0, R5; p
267818:  BLX             free
26781C:  B               loc_267838
26781E:  MOV             R0, R5; char *
267820:  MOV             R1, R6; char *
267822:  BLX             strcpy
267826:  MOV             R0, R5; dest
267828:  MOV             R1, R4; src
26782A:  BLX             strcat
26782E:  MOV             R1, SP; buf
267830:  MOV             R0, R5; file
267832:  BLX             stat
267836:  MOV             R4, R0
267838:  LDR             R2, [SP,#0x78+var_28]
26783A:  MOVS            R1, #0
26783C:  CMP             R4, #0
26783E:  MOV.W           R0, #0
267842:  ITT EQ
267844:  MOVEQ           R0, R2
267846:  ASREQ           R1, R2, #0x1F
267848:  ADD             SP, SP, #0x68 ; 'h'
26784A:  POP.W           {R8}
26784E:  POP             {R4-R7,PC}
