# NOTE NOTE : THIS IS A PUBLIC REPO
# library project
the chief objective of this program is organization of books and things in proper place.

1. we have and android application which will expose most of the things.
1. we will also have a web application which will do everything that is done with android + the following
    1. creation of user
    1. manage connections.
    1. generate the barcode stickers.
1. chiefly the projects consists of 4 parts.
    ```mermaid
    ---
    title: basic containment diagram
    ---
    erDiagram
        house ||--o{ Room1 : contains
        Room1 ||--o{ shelf1 : contains 
        shelf1 ||--o{ shelf2 : contains
        shelf1 ||--o{ object1 : contains
        shelf2 ||--o{ object2 : contains
        Room1 ||--o{ shelf3 : contains
        shelf3 ||--o{ object4 : contains
        house ||--o{ Room2 : contains
    ```
1. Here the description :-
    1. house is the major unit. 1 Account contains only 1 house
    1. 1 house contains many rooms
    1. each room conatins shelfs
    1. shelfs can contain other shelves or they may directly hold object.
1. The Aim of this project is to :
    1. record which object is where
    1. maintain to keep objects in their place. by encouraging audit.
    1. quickly find objets .based on search patterns.
    1. quickly tell what is the correct place of the object.
1. The basic architecture is as below.
    ````mermaid
    ---
    title: Basic Architecture of software
    ---
    flowchart TD
        A[Android] -->|API| CS(Web Client)
        WC -->|API| CS(Core server)
        CS --> RDBMS(MySQL)
        CS --> INM(Redis)
        A -->|cache| AC(Autocomplete)
        AC -->|API| CL(C library for fast delivery)
        CL --> INM
        INM --> CL
    ````