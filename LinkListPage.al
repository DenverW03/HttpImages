namespace DefaultPublisher.HTTPImages;

page 50101 "Link List Page"
{
    PageType = List;
    UsageCategory = Lists;

    SourceTable = "Link Table";

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

    }
}