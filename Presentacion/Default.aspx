<%@ Page Title="Mantenedor Persona" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentacion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<%--<form id="form1" > --%>
		<div style="width: 435px">
			<asp:Label ID="lblMensaje" runat="Server" ForeColor="red" EnableViewState="False" />
			<table style="border: 5px solid #cccccc;">
				<tr style="background-color: white; color: black;">
					<th colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AGREGAR PERSONAS&nbsp;</th>
				</tr>
				<tr>
					<td>
                        <br />
                        RUT: </td>
					<td>
						<br />
						<asp:TextBox ID="txtRut" runat="Server" ></asp:TextBox>
					</td>
					<td>
						<br />
						<asp:RequiredFieldValidator ID="valRut" runat="Server" Text="* RUT OBLIGATORIO" ControlToValidate="txtRut" Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
						<asp:CompareValidator ID="CompareValidator1" runat="Server" Text="SOLO ENTEROS" ControlToValidate="txtRut"
							Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
					</td>
				</tr>
				<tr>
					<td>NOMBRE:</td>
					<td>
						<asp:TextBox ID="txtNombre" runat="Server"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="valNombre" runat="Server" Text="* ingrese el nombre" ControlToValidate="txtNombre"
							Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
					</td>

				</tr>
				<tr>
					<td>APELLIDOS:
					</td>
					<td>
						<asp:TextBox ID="txtApellido" runat="Server"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="valApellido" runat="Server" Text="* ingrese el apellido" ControlToValidate="txtApellido"
							Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
					</td>

				</tr>
				<tr>
					<td>CALLE:
					</td>
					<td>
						<asp:TextBox ID="TextCalle" runat="Server"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="valCalle" runat="Server" Text="* ingrese la calle" ControlToValidate="txtApellido"
							Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
					</td>

				</tr>

				<tr>
					<td>COMUNA:
					</td>
					<td>
						<asp:TextBox ID="TextComuna" runat="Server"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="valComuna" runat="Server" Text="* ingrese  la comuna" ControlToValidate="txtApellido"
							Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
					</td>

				</tr>
				<tr>
					<td>NUMERO: </td>
					<td>
						<asp:TextBox ID="txtNumero" runat="Server" ></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="valNumero" runat="Server" Text="*" ControlToValidate="txtNumero" Display="dynamic" Enabled="true"></asp:RequiredFieldValidator>
						<asp:CompareValidator ID="Comp" runat="Server" Text="Solo Enteros" ControlToValidate="txtNumero"
							Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
					</td>
				</tr>
				<tr>
					<td>
                        <br />
                    </td>
					<td>
						<br />
						<asp:Button ID="btnEnviar" runat="server" Text="Guardar" OnClick="Agregar" OnClientClick="Agregar" />
						<br />
                        <br />
						<asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="PersonaBuscar" Width="78px" />
					</td>
					<td>
						<br />
						<asp:Button ID="Load" runat="server" Text="Mostrar" OnClick="gvMostrar" Width="81px" />
						<br />
                        <br />
						<asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="Modificar" />
					</td>
					<td style="width: 58px">
						&nbsp;</td>
				</tr>
				<tr>
					<td />
				</tr>
				<tr>
					<td colspan="3" align="center">
						<asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false">
							<Columns>
								<asp:BoundField DataField="rut" HeaderText="RUT" />
								<asp:BoundField DataField="nombre" HeaderText="NOMBRE" />
								<asp:BoundField DataField="apellido" HeaderText="APELLIDO" />
								<asp:BoundField DataField="calle" HeaderText="CALLE" />
								<asp:BoundField DataField="numero" HeaderText="NUMERO" />
								<asp:BoundField DataField="comuna" HeaderText="COMUNA" />
							</Columns>
						</asp:GridView>
					</td>
				</tr>
			</table>

		</div>
	<%--</form>--%>



	
</asp:Content>
