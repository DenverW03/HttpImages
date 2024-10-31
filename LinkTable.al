namespace DefaultPublisher.HTTPImages;
using Microsoft.Inventory.Item;

// This table is used to hold the image links relating to an item

table 50100 "Link Table"
{
    // default values is unclassified
    DataClassification = ToBeClassified;

    fields
    {
        // link ID - primary key for table
        field(1; "Link ID"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        // Item ID - relation to item table by Item No.
        field(2; "Item ID"; Code[20])
        {
            DataClassification = ToBeClassified;

            // The relation to the item No. field
            TableRelation = Item."No.";
        }

        // Link - image URL
        field(3; "Link"; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Link ID")
        {
            Clustered = true;
        }
    }
}