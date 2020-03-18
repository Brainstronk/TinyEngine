struct vs_out
{
    float4 Position : POSITION;
    float4 Color : COLOR;
};

vs_out
VS(float4 Position : POSITION, float4 Color : COLOR)
{
    vs_out Output;
    Output.Position = Position;
    Output.Color = Color;
    return(Output);
}