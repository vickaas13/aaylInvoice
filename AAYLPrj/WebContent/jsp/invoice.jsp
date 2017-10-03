<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
<style>
.invoice-box {
	max-width: 800px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.invoice-box table {
	width: 100%;
	line-height: inherit;
	text-align: left;
}

.invoice-box table td {
	padding: 5px;
	vertical-align: top;
}

.invoice-box table tr td:nth-child(2) {
	text-align: right;
}

.invoice-box table tr.top table td {
	padding-bottom: 20px;
}

.invoice-box table tr.top table td.title {
	font-size: 45px;
	line-height: 45px;
	color: #333;
}

.invoice-box table tr.information table td {
	padding-bottom: 40px;
}

.invoice-box table tr.heading td {
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-weight: bold;
}

.invoice-box table tr.details td {
	padding-bottom: 20px;
}

.invoice-box table tr.item td {
	border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
	border-bottom: none;
}

.invoice-box table tr.total td:nth-child(2) {
	border-top: 2px solid #eee;
	font-weight: bold;
}

@media only screen and (max-width: 600px) {
	.invoice-box table tr.top table td {
		width: 100%;
		display: block;
		text-align: center;
	}
	.invoice-box table tr.information table td {
		width: 100%;
		display: block;
		text-align: center;
	}
}
</style>
</head>

<body>
	<div class="invoice-box">
		<table cellpadding="0" cellspacing="0">
			<tr class="top">
				<td colspan="2">
					<table>
						<tr>
							<td class="title"><img
								src="logo.png"
								style="width: 100%; max-width: 300px;"></td>
							<td>Invoice #: 1<br> Created: January 1, 2017<br>
								Due: October 03, 2017
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr class="information">
				<td colspan="2">
					<table>
						<tr>
							<td>Green Leaf Design<br> 111 Main Street<br>
								Pleasanton, CA 99999 <br>99999-99999<br>vsghodke@gmail.com
							</td>

							<td>Inautix pvt.<br> Vikas Ghodke<br>
								vikas@gmail.com
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr class="heading">
				<td>Payment Method</td>

				<td>Check #</td>
			</tr>

			<tr class="details">
				<td>Check</td>

				<td>1000</td>
			</tr>

			<tr class="heading">
				<td>Item</td>
				<td>Price(Rs)</td>
				<td>Qty</td>
				<td>Total</td>
				<td>Tax</td>
			</tr>

			<tr class="item">
				<td>Design Services_businness</td>
				<td>300.00</td>
				<td>5</td>
				<td>2000</td>
				<td>100.00</td>
			</tr>

			<tr class="item">
				<td>Addiotional Concepts</td>
				<td>75.00</td>
				<td>5</td>
				<td>2000</td>
				<td>100.00</td>
			</tr>

			<tr class="item last">
				<td>Domain name (1 year)</td>

				<td>10.00</td>
			</tr>

			<tr class="total">
				<td></td>

				<td>Total: 385.00</td>
			</tr>
		</table>
	</div>
</body>
</html>