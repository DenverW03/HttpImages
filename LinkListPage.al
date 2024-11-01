namespace DefaultPublisher.HTTPImages;

page 50101 "Link List Page"
{
    PageType = List;
    UsageCategory = Lists;

    SourceTable = "Link Table";
    CardPageId = "Link Card";

    layout
    {
        area(content)
        {
            repeater(Links)
            {
                field("Link ID"; Rec."Link ID")
                {
                    ApplicationArea = All;
                }

                field("Item ID"; Rec."Item ID")
                {
                    ApplicationArea = All;
                }

                field("Link"; Rec."Link")
                {
                    ApplicationArea = All;
                }

                field("Image"; )
            }
            }

        area(FactBoxes)
        {

        }

    }

    // Method to set the blob image
    local procedure SetImage()
    var

    begin

    end;

    // This should return a blob type that is a raw data representation of the image to display
    local procedure GetBlobData()
    var
        InStream: InStream; // Reads from a Blob stream
    begin

    end;
}

// Table to be used as a temporary table to hold the BLOB image in memory
table 50103 BlobTable
{
    DataClassification = ToBeClassified;
    TableType = Temporary;
    fields
    {
        // Relation to the Link ID of the LinkTable
        field(1; "Link ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        // The blob data field
        field(2; "Image Data"; Blob)
        {
            DataClassification = ToBeClassified;
        }
    }
}