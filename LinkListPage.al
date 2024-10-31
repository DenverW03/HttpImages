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
            }
        }

        area(FactBoxes)
        {
        }

    }

    // This should return a blob type that is a raw data representation of the image to display
    local procedure GetBlobData()
    var

    begin

    end;
}