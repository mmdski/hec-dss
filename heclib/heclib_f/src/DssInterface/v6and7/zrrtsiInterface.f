      SUBROUTINE zrrtsi (IFLTAB, CPATH, CRDATE, CRTIME, KVALS, NVALS,
     * LGETDOB, LFILDOB, SVALUES, DVALUES, JQUAL, LQUAL, LQREAD,
     * CUNITS, CTYPE, IUHEAD, KUHEAD, NUHEAD, IOFSET, JCOMP,
     * COORDS, ICDESC, LCOORDS, ISTAT)
C
C     Z-Retrieve Regular interval Time-Series data internal Interface
C
      implicit none
C
C
      CHARACTER CPATH*(*), CTYPE*(*), CUNITS*(*), CRDATE*(*), CRTIME*(*)
      INTEGER IFLTAB(*), IUHEAD(*), JQUAL(*), ICDESC(*)
      integer zdssVersion
      INTEGER KVALS, NVALS, KUHEAD, NUHEAD, IOFSET, JCOMP, ISTAT
      REAL SVALUES(*)
      DOUBLE PRECISION DVALUES(*), COORDS(*)
      LOGICAL LGETDOB, LFILDOB, LCOORDS, LQUAL, LQREAD
C
      IF (zdssVersion(IFLTAB).EQ.6) THEN
         CALL zrrtsi6(IFLTAB, CPATH, CRDATE, CRTIME, KVALS, NVALS,
     *    LGETDOB, LFILDOB, SVALUES, DVALUES, JQUAL, LQUAL, LQREAD,
     *    CUNITS, CTYPE, IUHEAD, KUHEAD, NUHEAD, IOFSET, JCOMP,
     *    COORDS, ICDESC, LCOORDS, ISTAT)
      ELSE
          CALL zrrtsi7(IFLTAB, CPATH, CRDATE, CRTIME, KVALS, NVALS,
     *    LGETDOB, LFILDOB, SVALUES, DVALUES, JQUAL, LQUAL, LQREAD,
     *    CUNITS, CTYPE, IUHEAD, KUHEAD, NUHEAD, IOFSET, JCOMP,
     *    COORDS, ICDESC, LCOORDS, ISTAT)
      ENDIF
C
      RETURN
      END
