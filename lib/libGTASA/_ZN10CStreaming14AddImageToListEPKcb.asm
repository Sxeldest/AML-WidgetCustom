; =========================================================
; Game Engine Function: _ZN10CStreaming14AddImageToListEPKcb
; Address            : 0x2CF760 - 0x2CF81E
; =========================================================

2CF760:  PUSH            {R4-R7,LR}
2CF762:  ADD             R7, SP, #0xC
2CF764:  PUSH.W          {R11}
2CF768:  MOV             R5, R0
2CF76A:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF772)
2CF76C:  MOV             R4, R1
2CF76E:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF770:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF772:  LDRB            R1, [R0]; CStreaming::ms_files
2CF774:  CBZ             R1, loc_2CF7CE
2CF776:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF77C)
2CF778:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF77A:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF77C:  LDRB.W          R1, [R0,#(byte_792DA8 - 0x792D78)]!
2CF780:  CBZ             R1, loc_2CF7D2
2CF782:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF788)
2CF784:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF786:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF788:  LDRB.W          R1, [R0,#(byte_792DD8 - 0x792D78)]!
2CF78C:  CBZ             R1, loc_2CF7D6
2CF78E:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF794)
2CF790:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF792:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF794:  LDRB.W          R1, [R0,#(byte_792E08 - 0x792D78)]!
2CF798:  CBZ             R1, loc_2CF7DA
2CF79A:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF7A0)
2CF79C:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF79E:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF7A0:  LDRB.W          R1, [R0,#(byte_792E38 - 0x792D78)]!
2CF7A4:  CBZ             R1, loc_2CF7DE
2CF7A6:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF7AC)
2CF7A8:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF7AA:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF7AC:  LDRB.W          R1, [R0,#(byte_792E68 - 0x792D78)]!
2CF7B0:  CBZ             R1, loc_2CF7E2
2CF7B2:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF7B8)
2CF7B4:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF7B6:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF7B8:  LDRB.W          R1, [R0,#(byte_792E98 - 0x792D78)]
2CF7BC:  CBZ             R1, loc_2CF7E6
2CF7BE:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF7C4)
2CF7C0:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF7C2:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF7C4:  LDRB.W          R1, [R0,#(byte_792EC8 - 0x792D78)]
2CF7C8:  CBZ             R1, loc_2CF7EE
2CF7CA:  MOVS            R6, #0
2CF7CC:  B               loc_2CF816
2CF7CE:  MOVS            R6, #0
2CF7D0:  B               loc_2CF7F4
2CF7D2:  MOVS            R6, #1
2CF7D4:  B               loc_2CF7F4
2CF7D6:  MOVS            R6, #2
2CF7D8:  B               loc_2CF7F4
2CF7DA:  MOVS            R6, #3
2CF7DC:  B               loc_2CF7F4
2CF7DE:  MOVS            R6, #4
2CF7E0:  B               loc_2CF7F4
2CF7E2:  MOVS            R6, #5
2CF7E4:  B               loc_2CF7F4
2CF7E6:  ADD.W           R0, R0, #0x120
2CF7EA:  MOVS            R6, #6
2CF7EC:  B               loc_2CF7F4
2CF7EE:  ADD.W           R0, R0, #0x150; char *
2CF7F2:  MOVS            R6, #7
2CF7F4:  MOV             R1, R5; char *
2CF7F6:  BLX             strcpy
2CF7FA:  MOV             R0, R5; char *
2CF7FC:  MOVS            R1, #0; bool
2CF7FE:  BLX             j__Z12CdStreamOpenPKcb; CdStreamOpen(char const*,bool)
2CF802:  LDR             R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF80C)
2CF804:  ADD.W           R2, R6, R6,LSL#1
2CF808:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
2CF80A:  LDR             R1, [R1]; CStreaming::ms_files ...
2CF80C:  ADD.W           R1, R1, R2,LSL#4
2CF810:  STR             R0, [R1,#0x2C]
2CF812:  STRB.W          R4, [R1,#0x28]
2CF816:  MOV             R0, R6
2CF818:  POP.W           {R11}
2CF81C:  POP             {R4-R7,PC}
