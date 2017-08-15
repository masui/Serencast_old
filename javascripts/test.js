(() => {
    const a = location.href.split('/');
    const project = a[3];
    const page = a[4];
    const jsonurl = `https://scrapbox.io/api/pages/Serencast/駅データ/text`;
    $.ajax({
	url: jsonurl,
	async: false,
	success: (data) => {
	    console.log(data);
	}
    });
})();
