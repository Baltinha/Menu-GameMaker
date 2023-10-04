// scroll pra baixo para abaixar a % do volume
if(!global.somOn)
{
	indexVolume--;
	if(indexVolume <0)
	{
		indexVolume = vl_max -1;
	}

	volume -= 1;
	volume.clamp(volume,0,10)
}





