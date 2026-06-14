; =========================================================
; Game Engine Function: ReadALConfig
; Address            : 0x1D7FFC - 0x1D8104
; =========================================================

1D7FFC:  PUSH            {R4,R5,R11,LR}
1D8000:  ADD             R11, SP, #8
1D8004:  MOV             R0, #1; nmemb
1D8008:  MOV             R1, #0xC; size
1D800C:  MOV             R4, #1
1D8010:  BL              calloc
1D8014:  LDR             R1, =(dword_382930 - 0x1D8024)
1D8018:  LDR             R2, =(aGeneral - 0x1D802C); "general" ...
1D801C:  ADD             R5, PC, R1; dword_382930
1D8020:  STR             R0, [R5]
1D8024:  ADD             R0, PC, R2; "general"
1D8028:  BL              strdup
1D802C:  LDR             R1, [R5]
1D8030:  LDR             R2, =(dword_382934 - 0x1D8040)
1D8034:  STR             R0, [R1]
1D8038:  STR             R4, [PC,R2]; dword_382934
1D803C:  ADR             R0, aEtcOpenalAlsof; "/etc/openal/alsoft.conf"
1D8040:  ADR             R1, aR; "r"
1D8044:  BL              fopen
1D8048:  MOV             R4, R0
1D804C:  CMP             R4, #0
1D8050:  BEQ             loc_1D8064
1D8054:  MOV             R0, R4; stream
1D8058:  BL              sub_1D8154
1D805C:  MOV             R0, R4; stream
1D8060:  BL              fclose
1D8064:  ADR             R0, aHome; "HOME"
1D8068:  BL              getenv
1D806C:  MOV             R3, R0
1D8070:  CMP             R3, #0
1D8074:  LDRBNE          R0, [R3]
1D8078:  CMPNE           R0, #0
1D807C:  BEQ             loc_1D80C0
1D8080:  LDR             R0, =(byte_382938 - 0x1D8094)
1D8084:  ADR             R2, aSAlsoftrc; "%s/.alsoftrc"
1D8088:  MOV             R1, #0x400; maxlen
1D808C:  ADD             R4, PC, R0; byte_382938
1D8090:  MOV             R0, R4; s
1D8094:  BL              snprintf
1D8098:  ADR             R1, aR; "r"
1D809C:  MOV             R0, R4; filename
1D80A0:  BL              fopen
1D80A4:  MOV             R4, R0
1D80A8:  CMP             R4, #0
1D80AC:  BEQ             loc_1D80C0
1D80B0:  MOV             R0, R4; stream
1D80B4:  BL              sub_1D8154
1D80B8:  MOV             R0, R4; stream
1D80BC:  BL              fclose
1D80C0:  ADR             R0, aAlsoftConf; "ALSOFT_CONF"
1D80C4:  BL              getenv
1D80C8:  CMP             R0, #0
1D80CC:  LDRBNE          R1, [R0]
1D80D0:  CMPNE           R1, #0
1D80D4:  BEQ             locret_1D8100
1D80D8:  ADR             R1, aR; "r"
1D80DC:  BL              fopen
1D80E0:  MOV             R4, R0
1D80E4:  CMP             R4, #0
1D80E8:  POPEQ           {R4,R5,R11,PC}
1D80EC:  MOV             R0, R4; stream
1D80F0:  BL              sub_1D8154
1D80F4:  MOV             R0, R4; stream
1D80F8:  POP             {R4,R5,R11,LR}
1D80FC:  B               fclose
1D8100:  POP             {R4,R5,R11,PC}
