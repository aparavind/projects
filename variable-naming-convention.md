# Variable naming convention followed.

## 1-char
### Summary of Resources
|    |    |    |
|----|----|----|
|<b><u>Sr. | <b><u>from to | <b><u>usage |
|1. | a-j | database variable | 
|   | k-z | programming variable |
|   | A-G | files |
|   | H-L | physical things |
|   | M-R | living things |
|   | S-Z | computer accessories |


|    |    |
|----|----|
|<b><u>key</u></b> | <b><u>val</u></b> |
--
--  | <b>databases types
| a  | In Memory |
| b  | RDBMS |
| c  | plain-text |
| d  | memcached |
| e  | neo4j |
| f  | plain-text |
--
--  | <b>programming varialbes
| k  | protobuf message |
| l  | function name |
| m  | object names |
| n  | global variables |
| o  | local variables |
| p  | function arguments | 
| q  | return variable |
| r  | structure names 
| s  | object child
--
--  | <b>File Names 
| A  | programming lamguage |
| B  | headers files |
| C  | template files |
| D  | library files |
| E  | data files |
| F  | Executible |
| G  | ReadMe files |
--
-- | <b>physical
| N | physical structure
| O | virtual allocation
| P | physical person
| Q | physical things attribute

## 2-3 chars
|   |     |    |    |
|----|----|----|----|
|<b><u>Sr. |  <b><u>from to | <b><u>Applies to | <b><u>Used for |
-- | <b>template
|2-3 | 0[\d]  | C-template files | .proto files
|2-3 | 0[a-j] | C-template files | .j2 files
2-3  | 0[k-z] | C-template files | .json files (template)
|2-3 | 0[A-D] | C-template files | .xslt
|2-3 | 0[E-S] | C-template files | .json openapi definations
|2-3 | 0[T-Z] | C-template files | .yaml  
-- | <b> programming variables
|2-3 | ss  | programming variables types | string
|2-3 | si  | programming variables types | int32
|2-3 | sI  | programming variables types | int64
|2-3 | se  | programming variables types | int8
|2-3 | sb  | programming variables types | boolean
|2-3 | sc  | programming variables types | generic object
|2-3 | sd  | programming variables types | pointer
|2-3 | se  | programming variables types | pointer to pointer
|2-3 | sf  | programming variables types |b
--
-- | <b>physical attribute structure
|2-3 | na  | name
|2-3 | nx  | identification code
|2-3 | nc  | created data
|2-3 | nd  | end date
|2-3 | ne  | event date
|2-3 | nf  | address
|2-3| ng  | contains
|2-3 | nj  | is a part of
|2-3 | nl  | lenght
|2-3 | nb  | breadth
|2-3 | nh  | height
|2-3 | ni  | QUantity
|2-3 | nk  | lattitude
|2-3 | nm  | longitude




## 4-6 chars
|   |     |    |    |
|----|----|----|----|
|<b><u>Sr. |  <b><u>from to | <b><u>Applies to | <b><u>Used for |
-- | <b>Applies to All
|4-6 | 0\d\d | All | test files

## 4-6 applies to prgramming
|   |   |   |   |
|----|----|----|----|
|<b><u>Sr. |  <b><u>from to | <b><u>Applies to | <b><u>Used for |
--
-- | <b>Applies to programming variable
|4-6 | 0\d\d | All | test files

## 4-6 chars (breakup: to be updated for every files)
|   |     |    |    |
|----|----|----|----|
|<b><u>Sr. |  <b><u>from to  | <b><u>Used for |
|4-6 | 000 | testing the proto file


### 4-6 object identified (2-3 in case of physical object)
|   |     |    |    |
|----|----|----|----|
|<b><u>Sr. |  <b><u>from to  | <b><u>Used for |
|4-6 | xxa  | room |
|4-6 | xxb  | shelf |

### 4-6 object identified for physical objects
|4-6 | 



