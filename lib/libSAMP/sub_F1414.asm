; =========================================================
; Game Engine Function: sub_F1414
; Address            : 0xF1414 - 0xF1454
; =========================================================

F1414:  PUSH            {R4,R5,R7,LR}
F1416:  ADD             R7, SP, #8
F1418:  LDR             R1, =(aAxl - 0xF1424); "AXL" ...
F141A:  MOV             R4, R0
F141C:  LDR             R2, =(aLoadingTagsIco - 0xF1426); "Loading TAGS icon.." ...
F141E:  MOVS            R0, #4; prio
F1420:  ADD             R1, PC; "AXL"
F1422:  ADD             R2, PC; "Loading TAGS icon.."
F1424:  BLX             __android_log_print
F1428:  LDR             R5, =(asc_879DB - 0xF1430); "*" ...
F142A:  LDR             R1, =(aAfkIcon - 0xF1432); "afk_icon" ...
F142C:  ADD             R5, PC; "*"
F142E:  ADD             R1, PC; "afk_icon"
F1430:  MOV             R0, R5
F1432:  BL              sub_1085C0
F1436:  LDR             R1, =(aSpeaker - 0xF1440); "speaker" ...
F1438:  STR             R0, [R4]
F143A:  MOV             R0, R5
F143C:  ADD             R1, PC; "speaker"
F143E:  BL              sub_1085C0
F1442:  LDR             R1, =(aChatIcon - 0xF144C); "chat_icon" ...
F1444:  STR             R0, [R4,#4]
F1446:  MOV             R0, R5
F1448:  ADD             R1, PC; "chat_icon"
F144A:  BL              sub_1085C0
F144E:  STR             R0, [R4,#8]
F1450:  MOV             R0, R4
F1452:  POP             {R4,R5,R7,PC}
