; =========================================================
; Game Engine Function: sub_7EFE8
; Address            : 0x7EFE8 - 0x7F09A
; =========================================================

7EFE8:  PUSH            {R4-R7,LR}
7EFEA:  ADD             R7, SP, #0xC
7EFEC:  PUSH.W          {R8}
7EFF0:  SUB             SP, SP, #0x10
7EFF2:  LDR             R4, =(byte_1A49B1 - 0x7EFFC)
7EFF4:  MOV             R8, R1
7EFF6:  MOV             R5, R0
7EFF8:  ADD             R4, PC; byte_1A49B1
7EFFA:  LDRB            R0, [R4]
7EFFC:  LDR             R1, =(__stack_chk_guard_ptr - 0x7F002)
7EFFE:  ADD             R1, PC; __stack_chk_guard_ptr
7F000:  LDR             R1, [R1]; __stack_chk_guard
7F002:  LDR             R1, [R1]
7F004:  STR             R1, [SP,#0x20+var_14]
7F006:  CBNZ            R0, loc_7F014
7F008:  LDR             R0, =(aSvDbgNetworkRp - 0x7F00E); "[sv:dbg:network:rpc] : rpc received." ...
7F00A:  ADD             R0, PC; "[sv:dbg:network:rpc] : rpc received."
7F00C:  BL              sub_80664
7F010:  MOVS            R0, #1
7F012:  STRB            R0, [R4]
7F014:  CMP             R5, #0x19
7F016:  BNE             loc_7F04E
7F018:  LDR             R0, =(byte_1A45F3 - 0x7F01E)
7F01A:  ADD             R0, PC; byte_1A45F3
7F01C:  LDRB            R0, [R0]
7F01E:  CBZ             R0, loc_7F04E
7F020:  LDR             R0, =(dword_1A498C - 0x7F026)
7F022:  ADD             R0, PC; dword_1A498C
7F024:  LDRD.W          R6, R4, [R0]
7F028:  CMP             R6, R4
7F02A:  BEQ             loc_7F076
7F02C:  ADD             R5, SP, #0x20+var_1C
7F02E:  MOVS            R0, #0
7F030:  STRH.W          R0, [SP,#0x20+var_18]
7F034:  STR             R0, [SP,#0x20+var_1C]
7F036:  B               loc_7F03E
7F038:  ADDS            R6, #0x18
7F03A:  CMP             R6, R4
7F03C:  BEQ             loc_7F05A
7F03E:  LDR             R0, [R6,#0x10]
7F040:  CMP             R0, #0
7F042:  BEQ             loc_7F038
7F044:  LDR             R1, [R0]
7F046:  LDR             R2, [R1,#0x18]
7F048:  MOV             R1, R5
7F04A:  BLX             R2
7F04C:  B               loc_7F038
7F04E:  LDR             R0, =(aSvErrNetworkRp - 0x7F054); "[sv:err:network:rpc] : not initStatus |"... ...
7F050:  ADD             R0, PC; "[sv:err:network:rpc] : not initStatus |"...
7F052:  MOV             R1, R5
7F054:  BL              sub_80664
7F058:  B               loc_7F07E
7F05A:  ADD             R1, SP, #0x20+var_1C
7F05C:  MOV             R0, R8
7F05E:  MOVS            R2, #6
7F060:  BL              sub_86C1C
7F064:  LDRB.W          R1, [SP,#0x20+var_18]
7F068:  LDRB.W          R2, [SP,#0x20+var_18+1]
7F06C:  LDR             R0, =(aSvDbgNetworkCo - 0x7F072); "[sv:dbg:network:connect] : raknet conne"... ...
7F06E:  ADD             R0, PC; "[sv:dbg:network:connect] : raknet conne"...
7F070:  BL              sub_80664
7F074:  B               loc_7F07E
7F076:  LDR             R0, =(aSvErrNetworkRp_0 - 0x7F07C); "[sv:err:network:rpc] : no svConnectCall"... ...
7F078:  ADD             R0, PC; "[sv:err:network:rpc] : no svConnectCall"...
7F07A:  BL              sub_80664
7F07E:  LDR             R0, [SP,#0x20+var_14]
7F080:  LDR             R1, =(__stack_chk_guard_ptr - 0x7F086)
7F082:  ADD             R1, PC; __stack_chk_guard_ptr
7F084:  LDR             R1, [R1]; __stack_chk_guard
7F086:  LDR             R1, [R1]
7F088:  CMP             R1, R0
7F08A:  ITTTT EQ
7F08C:  MOVEQ           R0, #1
7F08E:  ADDEQ           SP, SP, #0x10
7F090:  POPEQ.W         {R8}
7F094:  POPEQ           {R4-R7,PC}
7F096:  BLX             __stack_chk_fail
