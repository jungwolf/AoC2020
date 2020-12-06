drop table day04_input_ext;
CREATE TABLE day04_input_ext (
  lineno      number
  , xline      VARCHAR2(4000)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY refactor_dir
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    FIELDS TERMINATED BY '^'
    MISSING FIELD VALUES ARE NULL
    (
      lineno recnum
      , xline CHAR
    )
  )
  LOCATION ('Day04_input.txt')
)
REJECT LIMIT 0;
