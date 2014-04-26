CREATE TABLE [dbo].[Car] (
    [CarID]        INT           IDENTITY (1, 1) NOT NULL,
    [CarType]      NVARCHAR (50) NULL,
    [VehicleName]  NVARCHAR (50) NULL,
    [Location]     NVARCHAR (50) NULL,
    [CountryOfMan] NVARCHAR (50) NULL,
    [Seats]        NVARCHAR (50) NULL,
    [ExColour]     NVARCHAR (50) NULL,
    [InColour]     NVARCHAR (50) NULL,
    [Condition]    NVARCHAR (50) NULL,
    [Available]    NVARCHAR (50) NULL,
    [Convertible]  NVARCHAR (50) NULL,
    [AddInfo]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CarID] ASC)
);

CREATE TABLE [dbo].[Customer] (
    [CustomerID]      INT           IDENTITY (1, 1) NOT NULL,
    [CustomerName]    NVARCHAR (50) NULL,
    [CustCompanyName] NVARCHAR (50) NULL,
    [CustomerEmail]   NVARCHAR (50) NULL,
    [CustomerMobile]  NVARCHAR (50) NULL,
    [CustomerNumber]  NVARCHAR (50) NULL,
    [CompanyAddress]  NVARCHAR (50) NULL,
    [HearAboutUs]     NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

CREATE TABLE [dbo].[Booking] (
    [BookingID]              INT           IDENTITY (1, 1) NOT NULL,
    [EventDesc]              NVARCHAR (50) NULL,
    [BookingDate]            DATE          NULL,
    [NumberOfDays]           NVARCHAR (50) NULL,
    [LocationAddress]        NVARCHAR (50) NULL,
    [EstimatedTotal]         NVARCHAR (50) NULL,
    [AdditionalRequirements] NVARCHAR (50) NULL,
    [CarID]                  INT           NOT NULL,
    [CustomerID]             INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([BookingID] ASC),
    CONSTRAINT [FK_dbo.Booking_dbo.CarID] FOREIGN KEY ([CarID]) REFERENCES [dbo].[Car] ([CarID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Booking_dbo.Customer_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]) ON DELETE CASCADE
);

