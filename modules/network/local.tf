locals {
  pub_sub_ids  = aws_subnet.public.*.id
  priv_sub_ids = aws_subnet.private.*.id
  az           = data.aws_availability_zones.az.names
}
