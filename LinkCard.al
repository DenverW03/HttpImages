namespace DefaultPublisher.HTTPImages;

page 50102 "Link Card"
{
    PageType = Card;
    UsageCategory = Tasks;

    SourceTable = "Link Table";

    layout
    {
        area(content)
        {
            group(LinkGroup)
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