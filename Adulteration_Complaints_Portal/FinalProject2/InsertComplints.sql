create proc insertcomplaints
@ID int, 
@Area varchar(20),
@Category varchar(20),
@Complaints varchar(500),
@Status varchar(20),
@ImgData varbinary(Max)
as
begin
insert into UserComplaints
values(@ID,@Area,@Category,@Complaints,@Status,@ImgData)
end