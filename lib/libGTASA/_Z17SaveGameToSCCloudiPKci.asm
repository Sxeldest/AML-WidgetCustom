; =========================================================
; Game Engine Function: _Z17SaveGameToSCCloudiPKci
; Address            : 0x287244 - 0x287258
; =========================================================

287244:  MOV             R3, R2
287246:  MOV             R2, R1
287248:  LDR             R1, =(cloudFilename_ptr - 0x28724E)
28724A:  ADD             R1, PC; cloudFilename_ptr
28724C:  LDR             R1, [R1]; cloudFilename
28724E:  LDR.W           R0, [R1,R0,LSL#2]
287252:  ADR             R1, aMultipartFormD; "multipart/form-data"
287254:  B.W             j_cloudStartUpload
