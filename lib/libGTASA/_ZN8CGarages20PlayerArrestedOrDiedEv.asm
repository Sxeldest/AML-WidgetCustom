; =========================================================
; Game Engine Function: _ZN8CGarages20PlayerArrestedOrDiedEv
; Address            : 0x3141F8 - 0x314284
; =========================================================

3141F8:  PUSH            {R7,LR}
3141FA:  MOV             R7, SP
3141FC:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x31420C)
3141FE:  MOVS            R1, #0x32 ; '2'
314200:  MOV.W           LR, #2
314204:  MOV.W           R12, #3
314208:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
31420A:  LDR             R0, [R0]; CGarages::aGarages ...
31420C:  ADDS            R0, #0x4D ; 'M'
31420E:  B               loc_314220
314210:  LDRB            R3, [R0]
314212:  CMP             R3, #3
314214:  BHI             def_31422A; jumptable 0031422A default case
314216:  CMP             R3, #1
314218:  IT NE
31421A:  STRBNE.W        R12, [R0]
31421E:  B               def_31422A; jumptable 0031422A default case
314220:  LDRB.W          R3, [R0,#-1]
314224:  SUBS            R3, #1; switch 45 cases
314226:  CMP             R3, #0x2C ; ','
314228:  BHI             def_31422A; jumptable 0031422A default case
31422A:  TBB.W           [PC,R3]; switch jump
31422E:  DCB 0x18; jump table for switch statement
31422F:  DCB 0x17
314230:  DCB 0x17
314231:  DCB 0x17
314232:  DCB 0x17
314233:  DCB 0x18
314234:  DCB 0x18
314235:  DCB 0x18
314236:  DCB 0x18
314237:  DCB 0x18
314238:  DCB 0x18
314239:  DCB 0x18
31423A:  DCB 0x17
31423B:  DCB 0x18
31423C:  DCB 0x18
31423D:  DCB 0x18
31423E:  DCB 0x18
31423F:  DCB 0x18
314240:  DCB 0x18
314241:  DCB 0x18
314242:  DCB 0x18
314243:  DCB 0x18
314244:  DCB 0x18
314245:  DCB 0x18
314246:  DCB 0x18
314247:  DCB 0x18
314248:  DCB 0x18
314249:  DCB 0x18
31424A:  DCB 0x18
31424B:  DCB 0x18
31424C:  DCB 0x18
31424D:  DCB 0x18
31424E:  DCB 0x18
31424F:  DCB 0x18
314250:  DCB 0x18
314251:  DCB 0x18
314252:  DCB 0x18
314253:  DCB 0x18
314254:  DCB 0x18
314255:  DCB 0x18
314256:  DCB 0x18
314257:  DCB 0x18
314258:  DCB 0x18
314259:  DCB 0x18
31425A:  DCB 0x18
31425B:  ALIGN 2
31425C:  B               loc_314210; jumptable 0031422A cases 2-5,13
31425E:  LDRB            R2, [R0]; jumptable 0031422A cases 1,6-12,14-45
314260:  SUBS            R2, #1
314262:  CMP             R2, #2
314264:  IT LS
314266:  STRBLS.W        LR, [R0]
31426A:  ADDS            R0, #0xD8; jumptable 0031422A default case
31426C:  SUBS            R1, #1
31426E:  BNE             loc_314220
314270:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x31427A)
314272:  MOVS            R2, #0
314274:  LDR             R1, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x31427C)
314276:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
314278:  ADD             R1, PC; _ZN8CGarages14MessageEndTimeE_ptr
31427A:  LDR             R0, [R0]; CGarages::MessageStartTime ...
31427C:  LDR             R1, [R1]; CGarages::MessageEndTime ...
31427E:  STR             R2, [R0]; CGarages::MessageStartTime
314280:  STR             R2, [R1]; CGarages::MessageEndTime
314282:  POP             {R7,PC}
