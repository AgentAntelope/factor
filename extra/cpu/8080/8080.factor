! Copyright (C) 2006 Chris Double.
! See http://factorcode.org/license.txt for BSD license.
!
USING: cpu.8080.emulator tools.time ;
IN: cpu.8080

INSTRUCTION: NOP          ; opcode 00 cycles 04 
INSTRUCTION: LD   BC,nn   ; opcode 01 cycles 10 
INSTRUCTION: LD   (BC),A  ; opcode 02 cycles 07 
INSTRUCTION: INC  BC      ; opcode 03 cycles 06 
INSTRUCTION: INC  B       ; opcode 04 cycles 05 
INSTRUCTION: DEC  B       ; opcode 05 cycles 05 
INSTRUCTION: LD   B,n     ; opcode 06 cycles 07 
INSTRUCTION: RLCA         ; opcode 07 cycles 04 
! INSTRUCTION: NOP          ; opcode 08 cycles 04 
INSTRUCTION: ADD  HL,BC   ; opcode 09 cycles 11 
INSTRUCTION: LD   A,(BC)  ; opcode 0A cycles 07 
INSTRUCTION: DEC  BC      ; opcode 0B cycles 06 
INSTRUCTION: INC  C       ; opcode 0C cycles 05 
INSTRUCTION: DEC  C       ; opcode 0D cycles 05 
INSTRUCTION: LD   C,n     ; opcode 0E cycles 07 
INSTRUCTION: RRCA         ; opcode 0F cycles 04 
INSTRUCTION: LD   DE,nn   ; opcode 11 cycles 10 
INSTRUCTION: LD   (DE),A  ; opcode 12 cycles 07 
INSTRUCTION: INC  DE      ; opcode 13 cycles 06 
INSTRUCTION: INC  D       ; opcode 14 cycles 05 
INSTRUCTION: DEC  D       ; opcode 15 cycles 05 
INSTRUCTION: LD   D,n     ; opcode 16 cycles 07 
INSTRUCTION: RLA          ; opcode 17 cycles 04 
INSTRUCTION: ADD  HL,DE   ; opcode 19 cycles 11 
INSTRUCTION: LD   A,(DE)  ; opcode 1A cycles 07 
INSTRUCTION: DEC  DE      ; opcode 1B cycles 06 
INSTRUCTION: INC  E       ; opcode 1C cycles 05 
INSTRUCTION: DEC  E       ; opcode 1D cycles 05 
INSTRUCTION: LD   E,n     ; opcode 1E cycles 07 
INSTRUCTION: RRA          ; opcode 1F cycles 04 
INSTRUCTION: LD   HL,nn   ; opcode 21 cycles 10 
INSTRUCTION: LD   (nn),HL ; opcode 22 cycles 16 
INSTRUCTION: INC  HL      ; opcode 23 cycles 06 
INSTRUCTION: INC  H       ; opcode 24 cycles 05 
INSTRUCTION: DEC  H       ; opcode 25 cycles 05 
INSTRUCTION: LD   H,n     ; opcode 26 cycles 07 
INSTRUCTION: DAA          ; opcode 27 cycles 04 
INSTRUCTION: ADD  HL,HL   ; opcode 29 cycles 11 
INSTRUCTION: LD   HL,(nn) ; opcode 2A cycles 16 
INSTRUCTION: DEC  HL      ; opcode 2B cycles 06 
INSTRUCTION: INC  L       ; opcode 2C cycles 05 
INSTRUCTION: DEC  L       ; opcode 2D cycles 05 
INSTRUCTION: LD   L,n     ; opcode 2E cycles 07 
INSTRUCTION: CPL          ; opcode 2F cycles 04 
INSTRUCTION: LD   SP,nn   ; opcode 31 cycles 10 
INSTRUCTION: LD   (nn),A  ; opcode 32 cycles 13 
INSTRUCTION: INC  SP      ; opcode 33 cycles 06 
INSTRUCTION: INC  (HL)    ; opcode 34 cycles 10 
INSTRUCTION: DEC  (HL)    ; opcode 35 cycles 10 
INSTRUCTION: LD   (HL),n  ; opcode 36 cycles 10 
INSTRUCTION: SCF          ; opcode 37 cycles 04 
INSTRUCTION: ADD  HL,SP   ; opcode 39 cycles 11 
INSTRUCTION: LD   A,(nn)  ; opcode 3A cycles 13 
INSTRUCTION: DEC  SP      ; opcode 3B cycles 06 
INSTRUCTION: INC  A       ; opcode 3C cycles 05 
INSTRUCTION: DEC  A       ; opcode 3D cycles 05 
INSTRUCTION: LD   A,n     ; opcode 3E cycles 07 
INSTRUCTION: CCF          ; opcode 3F cycles 04 
INSTRUCTION: LD   B,B     ; opcode 40 cycles 05 
INSTRUCTION: LD   B,C     ; opcode 41 cycles 05 
INSTRUCTION: LD   B,D     ; opcode 42 cycles 05 
INSTRUCTION: LD   B,E     ; opcode 43 cycles 05 
INSTRUCTION: LD   B,H     ; opcode 44 cycles 05 
INSTRUCTION: LD   B,L     ; opcode 45 cycles 05 
INSTRUCTION: LD   B,(HL)  ; opcode 46 cycles 07 
INSTRUCTION: LD   B,A     ; opcode 47 cycles 05 
INSTRUCTION: LD   C,B     ; opcode 48 cycles 05 
INSTRUCTION: LD   C,C     ; opcode 49 cycles 05 
INSTRUCTION: LD   C,D     ; opcode 4A cycles 05 
INSTRUCTION: LD   C,E     ; opcode 4B cycles 05 
INSTRUCTION: LD   C,H     ; opcode 4C cycles 05 
INSTRUCTION: LD   C,L     ; opcode 4D cycles 05 
INSTRUCTION: LD   C,(HL)  ; opcode 4E cycles 07 
INSTRUCTION: LD   C,A     ; opcode 4F cycles 05 
INSTRUCTION: LD   D,B     ; opcode 50 cycles 05 
INSTRUCTION: LD   D,C     ; opcode 51 cycles 05 
INSTRUCTION: LD   D,D     ; opcode 52 cycles 05 
INSTRUCTION: LD   D,E     ; opcode 53 cycles 05 
INSTRUCTION: LD   D,H     ; opcode 54 cycles 05 
INSTRUCTION: LD   D,L     ; opcode 55 cycles 05 
INSTRUCTION: LD   D,(HL)  ; opcode 56 cycles 07 
INSTRUCTION: LD   D,A     ; opcode 57 cycles 05 
INSTRUCTION: LD   E,B     ; opcode 58 cycles 05 
INSTRUCTION: LD   E,C     ; opcode 59 cycles 05 
INSTRUCTION: LD   E,D     ; opcode 5A cycles 05 
INSTRUCTION: LD   E,E     ; opcode 5B cycles 05 
INSTRUCTION: LD   E,H     ; opcode 5C cycles 05 
INSTRUCTION: LD   E,L     ; opcode 5D cycles 05 
INSTRUCTION: LD   E,(HL)  ; opcode 5E cycles 07 
INSTRUCTION: LD   E,A     ; opcode 5F cycles 05 
INSTRUCTION: LD   H,B     ; opcode 60 cycles 05 
INSTRUCTION: LD   H,C     ; opcode 61 cycles 05 
INSTRUCTION: LD   H,D     ; opcode 62 cycles 05 
INSTRUCTION: LD   H,E     ; opcode 63 cycles 05 
INSTRUCTION: LD   H,H     ; opcode 64 cycles 05 
INSTRUCTION: LD   H,L     ; opcode 65 cycles 05 
INSTRUCTION: LD   H,(HL)  ; opcode 66 cycles 07 
INSTRUCTION: LD   H,A     ; opcode 67 cycles 05 
INSTRUCTION: LD   L,B     ; opcode 68 cycles 05 
INSTRUCTION: LD   L,C     ; opcode 69 cycles 05 
INSTRUCTION: LD   L,D     ; opcode 6A cycles 05 
INSTRUCTION: LD   L,E     ; opcode 6B cycles 05 
INSTRUCTION: LD   L,H     ; opcode 6C cycles 05 
INSTRUCTION: LD   L,L     ; opcode 6D cycles 05 
INSTRUCTION: LD   L,(HL)  ; opcode 6E cycles 07 
INSTRUCTION: LD   L,A     ; opcode 6F cycles 05 
INSTRUCTION: LD   (HL),B  ; opcode 70 cycles 07 
INSTRUCTION: LD   (HL),C  ; opcode 71 cycles 07 
INSTRUCTION: LD   (HL),D  ; opcode 72 cycles 07 
INSTRUCTION: LD   (HL),E  ; opcode 73 cycles 07 
INSTRUCTION: LD   (HL),H  ; opcode 74 cycles 07 
INSTRUCTION: LD   (HL),L  ; opcode 75 cycles 07 
INSTRUCTION: HALT         ; opcode 76 cycles 07 
INSTRUCTION: LD   (HL),A  ; opcode 77 cycles 07 
INSTRUCTION: LD   A,B     ; opcode 78 cycles 05 
INSTRUCTION: LD   A,C     ; opcode 79 cycles 05 
INSTRUCTION: LD   A,D     ; opcode 7A cycles 05 
INSTRUCTION: LD   A,E     ; opcode 7B cycles 05 
INSTRUCTION: LD   A,H     ; opcode 7C cycles 05 
INSTRUCTION: LD   A,L     ; opcode 7D cycles 05 
INSTRUCTION: LD   A,(HL)  ; opcode 7E cycles 07 
INSTRUCTION: LD   A,A     ; opcode 7F cycles 05 
INSTRUCTION: ADD  A,B     ; opcode 80 cycles 04 
INSTRUCTION: ADD  A,C     ; opcode 81 cycles 04 
INSTRUCTION: ADD  A,D     ; opcode 82 cycles 04 
INSTRUCTION: ADD  A,E     ; opcode 83 cycles 04 
INSTRUCTION: ADD  A,H     ; opcode 84 cycles 04 
INSTRUCTION: ADD  A,L     ; opcode 85 cycles 04 
INSTRUCTION: ADD  A,(HL)  ; opcode 86 cycles 07 
INSTRUCTION: ADD  A,A     ; opcode 87 cycles 04 
INSTRUCTION: ADC  A,B     ; opcode 88 cycles 04 
INSTRUCTION: ADC  A,C     ; opcode 89 cycles 04 
INSTRUCTION: ADC  A,D     ; opcode 8A cycles 04 
INSTRUCTION: ADC  A,E     ; opcode 8B cycles 04 
INSTRUCTION: ADC  A,H     ; opcode 8C cycles 04 
INSTRUCTION: ADC  A,L     ; opcode 8D cycles 04 
INSTRUCTION: ADC  A,(HL)  ; opcode 8E cycles 07 
INSTRUCTION: ADC  A,A     ; opcode 8F cycles 04 
INSTRUCTION: SUB  B       ; opcode 90 cycles 04 
INSTRUCTION: SUB  C       ; opcode 91 cycles 04 
INSTRUCTION: SUB  D       ; opcode 92 cycles 04 
INSTRUCTION: SUB  E       ; opcode 93 cycles 04 
INSTRUCTION: SUB  H       ; opcode 94 cycles 04 
INSTRUCTION: SUB  L       ; opcode 95 cycles 04 
INSTRUCTION: SUB  (HL)    ; opcode 96 cycles 07 
INSTRUCTION: SUB  A       ; opcode 97 cycles 04 
INSTRUCTION: SBC  A,B     ; opcode 98 cycles 04 
INSTRUCTION: SBC  A,C     ; opcode 99 cycles 04 
INSTRUCTION: SBC  A,D     ; opcode 9A cycles 04 
INSTRUCTION: SBC  A,E     ; opcode 9B cycles 04 
INSTRUCTION: SBC  A,H     ; opcode 9C cycles 04 
INSTRUCTION: SBC  A,L     ; opcode 9D cycles 04 
INSTRUCTION: SBC  A,(HL)  ; opcode 9E cycles 07 
INSTRUCTION: SBC  A,A     ; opcode 9F cycles 04 
INSTRUCTION: AND  B       ; opcode A0 cycles 04 
INSTRUCTION: AND  C       ; opcode A1 cycles 04 
INSTRUCTION: AND  D       ; opcode A2 cycles 04 
INSTRUCTION: AND  E       ; opcode A3 cycles 04 
INSTRUCTION: AND  H       ; opcode A4 cycles 04 
INSTRUCTION: AND  L       ; opcode A5 cycles 04 
INSTRUCTION: AND  (HL)    ; opcode A6 cycles 07 
INSTRUCTION: AND  A       ; opcode A7 cycles 04 
INSTRUCTION: XOR  B       ; opcode A8 cycles 04 
INSTRUCTION: XOR  C       ; opcode A9 cycles 04 
INSTRUCTION: XOR  D       ; opcode AA cycles 04 
INSTRUCTION: XOR  E       ; opcode AB cycles 04 
INSTRUCTION: XOR  H       ; opcode AC cycles 04 
INSTRUCTION: XOR  L       ; opcode AD cycles 04 
INSTRUCTION: XOR  (HL)    ; opcode AE cycles 07 
INSTRUCTION: XOR  A       ; opcode AF cycles 04 
INSTRUCTION: OR   B       ; opcode B0 cycles 04 
INSTRUCTION: OR   C       ; opcode B1 cycles 04 
INSTRUCTION: OR   D       ; opcode B2 cycles 04 
INSTRUCTION: OR   E       ; opcode B3 cycles 04 
INSTRUCTION: OR   H       ; opcode B4 cycles 04 
INSTRUCTION: OR   L       ; opcode B5 cycles 04 
INSTRUCTION: OR   (HL)    ; opcode B6 cycles 07 
INSTRUCTION: OR   A       ; opcode B7 cycles 04 
INSTRUCTION: CP   B       ; opcode B8 cycles 04 
INSTRUCTION: CP   C       ; opcode B9 cycles 04 
INSTRUCTION: CP   D       ; opcode BA cycles 04 
INSTRUCTION: CP   E       ; opcode BB cycles 04 
INSTRUCTION: CP   H       ; opcode BC cycles 04 
INSTRUCTION: CP   L       ; opcode BD cycles 04 
INSTRUCTION: CP   (HL)    ; opcode BE cycles 07 
INSTRUCTION: CP   A       ; opcode BF cycles 04 
INSTRUCTION: RET  NZ      ; opcode C0 cycles 05 
INSTRUCTION: POP  BC      ; opcode C1 cycles 10 
INSTRUCTION: JP   NZ,nn   ; opcode C2 cycles 10 
INSTRUCTION: JP   nn      ; opcode C3 cycles 10 
INSTRUCTION: CALL NZ,nn   ; opcode C4 cycles 11 
INSTRUCTION: PUSH BC      ; opcode C5 cycles 11 
INSTRUCTION: ADD  A,n     ; opcode C6 cycles 07 
INSTRUCTION: RST  0       ; opcode C7 cycles 11 
INSTRUCTION: RET  Z       ; opcode C8 cycles 05 
INSTRUCTION: RET  nn      ; opcode C9 cycles 10 
INSTRUCTION: JP   Z,nn    ; opcode CA cycles 10 
INSTRUCTION: CALL Z,nn    ; opcode CC cycles 11 
INSTRUCTION: CALL nn      ; opcode CD cycles 17 
INSTRUCTION: ADC  A,n     ; opcode CE cycles 07 
INSTRUCTION: RST  8       ; opcode CF cycles 11 
INSTRUCTION: RET  NC      ; opcode D0 cycles 05 
INSTRUCTION: POP  DE      ; opcode D1 cycles 10 
INSTRUCTION: JP   NC,nn   ; opcode D2 cycles 10 
INSTRUCTION: OUT  (n),A   ; opcode D3 cycles 10 
INSTRUCTION: CALL NC,nn   ; opcode D4 cycles 11 
INSTRUCTION: PUSH DE      ; opcode D5 cycles 11 
INSTRUCTION: SUB  n       ; opcode D6 cycles 07 
INSTRUCTION: RST  10H     ; opcode D7 cycles 11 
INSTRUCTION: RET  C       ; opcode D8 cycles 05 
INSTRUCTION: JP   C,nn    ; opcode DA cycles 10 
INSTRUCTION: IN   A,(n)   ; opcode DB cycles 10 
INSTRUCTION: CALL C,nn    ; opcode DC cycles 11 
INSTRUCTION: SBC  A,n     ; opcode DE cycles 07 
INSTRUCTION: RST  18H     ; opcode DF cycles 11 
INSTRUCTION: RET  PO      ; opcode E0 cycles 05 
INSTRUCTION: POP  HL      ; opcode E1 cycles 10 
INSTRUCTION: JP   PO,nn   ; opcode E2 cycles 10 
INSTRUCTION: EX   (SP),HL ; opcode E3 cycles 04 
INSTRUCTION: CALL PO,nn   ; opcode E4 cycles 11 
INSTRUCTION: PUSH HL      ; opcode E5 cycles 11 
INSTRUCTION: AND  n       ; opcode E6 cycles 07 
INSTRUCTION: RST  20H     ; opcode E7 cycles 11 
INSTRUCTION: RET  PE      ; opcode E8 cycles 05 
INSTRUCTION: JP   (HL)    ; opcode E9 cycles 04 
INSTRUCTION: JP   PE,nn   ; opcode EA cycles 10 
INSTRUCTION: EX   DE,HL   ; opcode EB cycles 04 
INSTRUCTION: CALL PE,nn   ; opcode EC cycles 11 
INSTRUCTION: XOR  n       ; opcode EE cycles 07 
INSTRUCTION: RST  28H     ; opcode EF cycles 11 
INSTRUCTION: RET  P       ; opcode F0 cycles 05 
INSTRUCTION: POP  AF      ; opcode F1 cycles 10 
INSTRUCTION: JP   P,nn    ; opcode F2 cycles 10 
INSTRUCTION: DI           ; opcode F3 cycles 04 
INSTRUCTION: CALL P,nn    ; opcode F4 cycles 11 
INSTRUCTION: PUSH AF      ; opcode F5 cycles 11 
INSTRUCTION: OR   n       ; opcode F6 cycles 07 
INSTRUCTION: RST  30H     ; opcode F7 cycles 11 
INSTRUCTION: RET  M       ; opcode F8 cycles 05 
INSTRUCTION: LD   SP,HL   ; opcode F9 cycles 06 
INSTRUCTION: JP   M,nn    ; opcode FA cycles 10 
INSTRUCTION: EI           ; opcode FB cycles 04 
INSTRUCTION: CALL M,nn    ; opcode FC cycles 11 
INSTRUCTION: CP   n       ; opcode FE cycles 07 
INSTRUCTION: RST  38H     ; opcode FF cycles 11 

! : each-8bit ( n quot -- )
!   8 [ ! n quot bit
!    pick over -1 * shift 1 bitand pick call 
!   ] repeat 2drop ;
! 
! : >ppm ( cpu filename -- cpu )
!   #! Dump the current screen image to a ppm image file with the given name.
!   <file-writer> [
!     "P3" print
!     "256 224" print
!     "1" print
!     224 [
!       32 [
!         over 32 * over +  HEX: 2400 + ! cpu h w addr
!         >r pick r> swap cpu-ram nth [
!           0 = [
!             " 0 0 0" write
!           ] [
!             " 1 1 1" write
!           ] if
!         ] each-8bit
!       ] repeat nl
!     ] repeat
!   ] with-stream ;

: time-test ( -- )
  test-cpu [ 1000000 run-n ] time ;

